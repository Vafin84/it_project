import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:it_project/app/domain/error_entity.dart';
import 'package:it_project/feature/auth/domian/auth_repository.dart';
import 'package:it_project/feature/auth/domian/entities/user_entity/user_entity.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';
part 'auth_cubit.g.dart';

@singleton
class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit(this.authRepositoty) : super(AuthState.notAuthorized());
  final AuthRepositoty authRepositoty;

  Future<void> singIn({
    required String username,
    required String password,
  }) async {
    emit(AuthState.waiting());
    try {
      final UserEntity userEntity = await authRepositoty.singIn(username: username, password: password);
      emit(AuthState.authorized(userEntity));
    } catch (error, st) {
      addError(error, st);
    }
  }

  Future<void> singUp({required String username, required String password, required String email}) async {
    emit(AuthState.waiting());
    try {
      final UserEntity userEntity = await authRepositoty.singUp(username: username, password: password, email: email);
      emit(AuthState.authorized(userEntity));
    } catch (error, st) {
      addError(error, st);
    }
  }

  Future<void> getProfile() async {
    try {
      _updateUserState(const AsyncSnapshot.waiting());
      final UserEntity newUserEntity = await authRepositoty.getProfile();
      emit(state.maybeWhen(
        orElse: () => state,
        authorized: (userEntity) =>
            AuthState.authorized(userEntity.copyWith(username: newUserEntity.username, email: newUserEntity.email)),
      ));
      _updateUserState(const AsyncSnapshot.withData(ConnectionState.done, "Успешное получение данных"));
    } catch (error) {
      _updateUserState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  Future<void> userUpdate(String? username, String? email) async {
    try {
      _updateUserState(const AsyncSnapshot.waiting());
      await Future.delayed(const Duration(seconds: 1));
      final bool isEmptyUsername = username?.trim().isEmpty == true;
      final bool isEmptyEmail = email?.trim().isEmpty == true;
      final UserEntity newUserEntity = await authRepositoty.userUpdate(
        username: isEmptyUsername ? null : username,
        email: isEmptyEmail ? null : email,
      );
      emit(state.maybeWhen(
        orElse: () => state,
        authorized: (userEntity) =>
            AuthState.authorized(userEntity.copyWith(username: newUserEntity.username, email: newUserEntity.email)),
      ));
      _updateUserState(const AsyncSnapshot.withData(ConnectionState.done, "Успешное обновление данных"));
    } catch (error) {
      _updateUserState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  Future<void> passwordUpdate({required String oldPassword, required String newPassword}) async {
    try {
      if (newPassword.trim().isEmpty == true) {
        throw ErrorEntity(message: "Новый пароль пустой");
      }

      final message = await authRepositoty.passwordUpdate(oldPassword: oldPassword, newPassword: newPassword);
      _updateUserState(AsyncSnapshot.withData(ConnectionState.done, message));
    } catch (error) {
      _updateUserState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  Future<void> refreshToken() async {
    final refreshToken = state.whenOrNull(authorized: (userEntity) => userEntity.refreshToken);
    try {
      final UserEntity userEntity = await authRepositoty.refreshToken(refreshToken: refreshToken);
      emit(AuthState.authorized(userEntity));
    } catch (error, st) {
      addError(error, st);
    }
  }

  Future<void> logOut() async => emit(AuthState.notAuthorized());

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    final state = AuthState.fromJson(json);
    return state.whenOrNull(
      authorized: (userEntity) => AuthState.authorized(userEntity),
    );
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state
            .whenOrNull(
              authorized: (userEntity) => AuthState.authorized(userEntity),
            )
            ?.toJson() ??
        AuthState.notAuthorized().toJson();
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(AuthState.error(error));
    super.addError(error, stackTrace);
  }

  void _updateUserState(AsyncSnapshot asyncSnapshot) {
    emit(
      state.maybeWhen(
        orElse: () => state,
        authorized: (userEntity) {
          return AuthState.authorized(userEntity.copyWith(userState: asyncSnapshot));
        },
      ),
    );
  }
}
