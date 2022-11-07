// import 'package:injectable/injectable.dart';
// import 'package:it_project/feature/auth/domian/auth_repository.dart';
// import 'package:it_project/feature/auth/domian/entities/user_entity/user_entity.dart';

// @Injectable(as: AuthRepositoty)
// @test
// class MockAuthRepository implements AuthRepositoty {
//   @override
//   Future getProfile() {
//     // TODO: implement getProfile
//     throw UnimplementedError();
//   }

//   @override
//   Future passwordUpdate({required String oldPassword, required String newPassword}) {
//     // TODO: implement passwordUpdate
//     throw UnimplementedError();
//   }

//   @override
//   Future refreshToken({String? refreshToken}) {
//     // TODO: implement refreshToken
//     throw UnimplementedError();
//   }

//   @override
//   Future singIn({required String username, required String password}) {
//     return Future.delayed(const Duration(seconds: 2), () {
//       // throw Exception("Test Error");
//       return UserEntity(id: "-1", username: username, email: "testEmail");
//     });
//   }

//   @override
//   Future singUp({
//     required String username,
//     required String password,
//     required String email,
//   }) {
//     return Future.delayed(const Duration(seconds: 2), () {
//       return UserEntity(id: "-1", username: username, email: email);
//     });
//   }

//   @override
//   Future userUpdate({String? username, String? email}) {
//     // TODO: implement userUpdate
//     throw UnimplementedError();
//   }
// }
