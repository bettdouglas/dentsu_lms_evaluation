import 'package:grpc/grpc.dart';
import 'package:lms_app/features/authentication/auth/auth.dart';

class TokenClientInterceptor extends ClientInterceptor {
  final AuthRepository authRepository;

  TokenClientInterceptor(this.authRepository);

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
    ClientMethod<Q, R> method,
    Stream<Q> requests,
    CallOptions options,
    ClientStreamingInvoker<Q, R> invoker,
  ) {
    final modifiedOptions = options.mergedWith(
      CallOptions(
        providers: [
          _injectToken, // method signatures match, so we should be ok
        ],
      ),
    );
    return super.interceptStreaming(method, requests, modifiedOptions, invoker);
  }

  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    ClientUnaryInvoker<Q, R> invoker,
  ) {
    final modifiedOptions = options.mergedWith(
      CallOptions(
        providers: [
          (Map<String, String> metadata, String uri) {
            return _injectToken(metadata, uri);
          },
        ],
      ),
    );
    return super.interceptUnary(method, request, modifiedOptions, invoker);
  }

  Future<void> _injectToken(Map<String, String> metadata, String uri) async {
    final getTokenOption = await authRepository.getToken();
    getTokenOption.fold(
      () => null,
      (t) {
        metadata['authorization'] = t;
      },
    );
    metadata['request_time'] = DateTime.now().toIso8601String();
  }
}
