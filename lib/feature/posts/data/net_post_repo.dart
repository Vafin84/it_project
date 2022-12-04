import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:it_project/app/domain/app_api.dart';
import 'package:it_project/feature/posts/domain/post_repo.dart';

@Injectable(as: PostRepo)
class NetPostRepo implements PostRepo {
  final AppApi api;

  NetPostRepo(this.api);
  @override
  Future<Iterable> fetchPosts() async {
    try {
      final Response response = await api.fetchPosts();
      return response.data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> createPosts(Map args) async {
    try {
      final Response response = await api.createPosts(args);
      return response.data["message"];
    } catch (_) {
      rethrow;
    }
  }
}
