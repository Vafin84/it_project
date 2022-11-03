abstract class AuthRepositoty {
  Future<dynamic> singUp({
    required String username,
    required String password,
    required String email,
  });

  Future<dynamic> singIn({
    required String username,
    required String password,
  });

  Future<dynamic> getProfile();

  Future<dynamic> userUpdate({
    String? username,
    String? email,
  });

  Future<dynamic> passwordUpdate({
    required String oldPassword,
    required String newPassword,
  });

  Future<dynamic> refreshToken({String? refreshToken});
}
