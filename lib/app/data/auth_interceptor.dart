import 'package:dio/dio.dart';
import 'package:it_project/app/di/init_di.dart';
import 'package:it_project/app/domain/app_api.dart';
import 'package:it_project/feature/auth/domian/auth_state/auth_cubit.dart';

class AuthInterceptor extends QueuedInterceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final accessToken = locator.get<AuthCubit>().state.whenOrNull(
          authorized: (userEntity) => userEntity.accessToken,
        );
    if (accessToken == null) {
      super.onRequest(options, handler);
    } else {
      final headers = options.headers;
      headers["Authorization"] = "Bearer $accessToken";
      super.onRequest(options.copyWith(headers: headers), handler);
    }
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      try {
        await locator.get<AuthCubit>().refreshToken().then((token) async {
          if (token == null) {
            super.onError(err, handler);
          } else {
            err.requestOptions.headers["Authorization"] = "Bearer $token";
            final response = await locator.get<AppApi>().fethc(err.requestOptions);
            return handler.resolve(response);
          }
        });
      } on DioError catch (error) {
        super.onError(error, handler);
      }
    } else {
      super.onError(err, handler);
    }
  }
}
