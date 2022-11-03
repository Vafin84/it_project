import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it_project/feature/auth/domian/entities/user_entity/user_entity.dart';
part 'user_dto.g.dart';

@JsonSerializable()
class UserDTO {
  final dynamic id;
  final dynamic username;
  final dynamic email;
  final dynamic accessToken;
  final dynamic refreshToken;

  UserDTO({
    this.id,
    this.username,
    this.email,
    this.accessToken,
    this.refreshToken,
  });

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  /// Connect the generated [_$UserDTOToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserDTOToJson(this);
  UserEntity toEntity() {
    return UserEntity(
      id: id.toString(),
      username: username.toString(),
      email: email.toString(),
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
