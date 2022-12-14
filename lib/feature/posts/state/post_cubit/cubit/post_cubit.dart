import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:it_project/feature/posts/domain/entity/post/post_entity.dart';
import 'package:it_project/feature/posts/domain/post_repo.dart';

part 'post_state.dart';
part 'post_cubit.freezed.dart';
part 'post_cubit.g.dart';

class PostCubit extends HydratedCubit<PostState> {
  PostCubit(this.repo) : super(PostState(asyncSnapshot: const AsyncSnapshot.nothing()));
  final PostRepo repo;

  Future<void> fetchPost() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await repo.fetchPosts().then((value) {
      final Iterable iterable = value;
      emit(state.copyWith(
          postList: iterable.map((e) => PostEntity.fromJson(e)).toList(),
          asyncSnapshot: const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> createPost(Map args) async {
    await repo.createPosts(args).then((value) {
      fetchPost();
    }).catchError((error) {
      addError(error);
    });
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }

  @override
  PostState? fromJson(Map<String, dynamic> json) {
    return PostState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PostState state) {
    return state.toJson();
  }
}
