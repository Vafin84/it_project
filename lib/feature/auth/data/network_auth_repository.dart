import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:it_project/app/domain/app_api.dart';
import 'package:it_project/feature/auth/data/dto/user_dto.dart';
import 'package:it_project/feature/auth/domian/auth_repository.dart';
import 'package:it_project/feature/auth/domian/entities/user_entity/user_entity.dart';

@Injectable(as: AuthRepositoty)
class NetworkAuthRepository implements AuthRepositoty {
  final AppApi api;

  NetworkAuthRepository(this.api);

  @override
  Future<UserEntity> getProfile() async {
    try {
      final response = await api.getProfile();
      return UserDTO.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> passwordUpdate({required String oldPassword, required String newPassword}) async {
    try {
      final Response response = await api.passwordUpdate(oldPassword: oldPassword, newPassword: newPassword);
      return response.data["message"];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> refreshToken({String? refreshToken}) async {
    try {
      final response = await api.refreshToken(refreshToken: refreshToken);

      return UserDTO.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> singIn({required String username, required String password}) async {
    try {
      final response = await api.singIn(username: username, password: password);
      return UserDTO.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> singUp({required String username, required String password, required String email}) async {
    try {
      final response = await api.singUp(username: username, password: password, email: email);
      return UserDTO.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> userUpdate({String? username, String? email}) async {
    try {
      final response = await api.userUpdate(username: username, email: email);
      return UserDTO.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }
}
