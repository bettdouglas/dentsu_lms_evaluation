import 'package:server/database/database.dart';
import 'package:server/utils/auth_utils.dart';
import 'package:test/test.dart';

void main() {
  late Agent user;

  setUpAll(() {
    user = Agent(
      createdAt: DateTime.now(),
      id: 1,
      password: 'hashed',
      name: 'user1',
      email: 'email',
      role: 'role',
    );
  });

  test('can create jwt', () async {
    final jwt = createJwt(user);
    expect(jwt, isA<String>());
  });

  test('can decode jwt', () async {
    final jwt = createJwt(user);
    final claims = await decodeJwt(jwt);
    expect(claims, isA<Map>());
    expect(claims['id'], equals(user.id));
    expect(claims['username'], equals(user.name));
    expect(claims['email'], equals(user.email));
  });
}
