import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:it_project/feature/auth/domian/auth_repository.dart';
import 'package:it_project/feature/auth/domian/entities/user_entity/user_entity.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';
part 'auth_cubit.g.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit(this.authRepositoty) : super(AuthState.notAuthorised());
  final AuthRepositoty authRepositoty;

  Future<void> singIn({
    required String username,
    required String password,
  }) async {
    emit(AuthState.waiting());
    try {
      final UserEntity userEntity = await authRepositoty.singIn(username: username, password: password);
      emit(AuthState.authorised(userEntity));
    } catch (error, st) {
      addError(error, st);
    }
  }

  Future<void> singUp({required String username, required String password, required String email}) async {
    emit(AuthState.waiting());
    try {
      final UserEntity userEntity = await authRepositoty.singUp(username: username, password: password, email: email);
      emit(AuthState.authorised(userEntity));
    } catch (error, st) {
      addError(error, st);
    }
  }

  Future<void> refreshToken() async {
    final refreshToken = state.whenOrNull(authorised: (userEntity) => userEntity.refreshToken);
    try {
      final UserEntity userEntity = await authRepositoty.refreshToken(refreshToken: refreshToken);
      emit(AuthState.authorised(userEntity));
    } catch (error, st) {
      addError(error, st);
    }
  }

  Future<void> logOut() async => emit(AuthState.notAuthorised());

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    final state = AuthState.fromJson(json);
    return state.whenOrNull(
      authorised: (userEntity) => AuthState.authorised(userEntity),
    );
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state
            .whenOrNull(
              authorised: (userEntity) => AuthState.authorised(userEntity),
            )
            ?.toJson() ??
        AuthState.notAuthorised().toJson();
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(AuthState.error(error));
    super.addError(error, stackTrace);
  }
}
