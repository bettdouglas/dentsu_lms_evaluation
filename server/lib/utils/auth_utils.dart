import 'package:dbcrypt/dbcrypt.dart';
import 'package:fpdart/fpdart.dart';
import 'package:grpc/grpc.dart';
import 'package:jose/jose.dart';
import 'package:server/database/database.dart';
import 'package:server/utils/dotenv.dart';

String createJwt(
  Agent agent, {
  Duration expiry = const Duration(days: 2),
}) {
  final secretKey = dotEnv.getOrElse(
    'SECRET_KEY',
    () => throw 'SECRET_KEY not defined',
  );
  // final claims = JsonWebTokenClaims.fromJson({
  //   "exp": expiry.inSeconds,
  //   "iss": "bereal-clone.com",
  // });
  final builder = JsonWebSignatureBuilder();
  builder.addRecipient(
    JsonWebKey.fromJson(
      {
        "k": secretKey,
        "kty": 'oct',
      },
    ),
    algorithm: 'HS256',
  );
  builder.jsonContent = {
    'id': agent.id,
    'username': agent.name,
    'email': agent.email,
  };
  final jwt = builder.build();
  return jwt.toCompactSerialization();
}

/// this will verify the JWT and return the claims or throw an exception.
/// Try catch will be needed when calling this method.
Future<Map<String, dynamic>> decodeJwt(String token) async {
  final secretKey = dotEnv.getOrElse(
    'SECRET_KEY',
    () => throw 'SECRET_KEY not defined',
  );
  final unverified = JsonWebToken.unverified(token);
  final keyStore = JsonWebKeyStore()
    ..addKey(JsonWebKey.fromJson({
      "kty": "oct",
      "k": secretKey,
    }));
  final verified = await unverified.verify(keyStore);
  if (verified) {
    final claims = Map<String, dynamic>.from(unverified.claims.toJson());
    claims['user_id'] = claims['id'];
    return claims;
  } else {
    throw InvalidTokenException('Invalid token');
  }
}

String hashPassword(String password) {
  return DBCrypt().hashpw(password, DBCrypt().gensalt());
}

bool checkPassword(String password, String passwordHash) {
  return DBCrypt().checkpw(password, passwordHash);
}

class InvalidTokenException implements Exception {
  final String message;
  InvalidTokenException(this.message);

  @override
  String toString() {
    return 'InvalidTokenException($message)';
  }
}

Future<Either<String, int>> getUidFromMetadata(ServiceCall serviceCall) async {
  final metadata = serviceCall.clientMetadata ?? {};
  print(metadata);
  final token = metadata['authentication'];
  if (token == null) {
    return left('Missing token header');
  }
  try {
    final claims = await decodeJwt(token);
    final id = claims['user_id'];
    if (id == null) {
      return left('Invalid uid');
    } else {
      return right(id);
    }
  } on InvalidTokenException {
    return left('Invalid token');
  }
}
