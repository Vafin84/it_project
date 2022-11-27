import 'package:flutter/material.dart';
import 'package:it_project/feature/posts/domain/entity/post/post_entity.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key? key, required this.postEntity}) : super(key: key);
  final PostEntity postEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        title: Text(postEntity.name),
        subtitle: Text(postEntity.preContent ?? ""),
        trailing: Text("автор: ${postEntity.author?.id ?? ""}"),
      ),
    );
  }
}
