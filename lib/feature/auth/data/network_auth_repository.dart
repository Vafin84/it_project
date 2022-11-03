import 'package:injectable/injectable.dart';
import 'package:it_project/app/data/dio_container.dart';
import 'package:it_project/feature/auth/data/dto/user_dto.dart';
import 'package:it_project/feature/auth/domian/auth_repository.dart';

@Injectable(as: AuthRepositoty)
@prod
class NetworkAuthRepository implements AuthRepositoty {
  final DioContainer dioContainer;

  NetworkAuthRepository(this.dioContainer);

  @override
  Future getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future passwordUpdate({required String oldPassword, required String newPassword}) {
    // TODO: implement passwordUpdate
    throw UnimplementedError();
  }

  @override
  Future refreshToken({String? refreshToken}) async {
    try {
      final response = await dioContainer.dio.post("/auth/token/$refreshToken");

      return UserDTO.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future singIn({required String username, required String password}) async {
    try {
      final response = await dioContainer.dio.post(
        "/auth/token",
        data: {"username": username, "password": password},
      );

      return UserDTO.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future singUp({required String username, required String password, required String email}) async {
    try {
      final response = await dioContainer.dio.put(
        "/auth/token",
        data: {"username": username, "password": password, "email": email},
      );

      return UserDTO.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future userUpdate({String? username, String? email}) {
    // TODO: implement userUpdate
    throw UnimplementedError();
  }
}
