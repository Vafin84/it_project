abstract class PostRepo {
  Future<Iterable> fetchPosts();
  Future<String> createPosts(Map args);
}
