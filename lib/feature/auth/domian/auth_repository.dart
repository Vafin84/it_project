import 'package:it_project/feature/auth/domian/entities/user_entity/user_entity.dart';

abstract class AuthRepositoty {
  Future<UserEntity> singUp({
    required String username,
    required String password,
    required String email,
  });

  Future<UserEntity> singIn({
    required String username,
    required String password,
  });

  Future<UserEntity> getProfile();

  Future<UserEntity> userUpdate({
    String? username,
    String? email,
  });

  Future<String> passwordUpdate({
    required String oldPassword,
    required String newPassword,
  });

  Future<dynamic> refreshToken({String? refreshToken});
}
