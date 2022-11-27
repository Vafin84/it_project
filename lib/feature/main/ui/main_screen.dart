import 'package:flutter/material.dart';
import 'package:it_project/feature/auth/domian/entities/user_entity/user_entity.dart';
import 'package:it_project/feature/auth/ui/user_screen.dart';
import 'package:it_project/feature/posts/ui/post_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.userEntity}) : super(key: key);

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserScreen(),
                    ),
                  ),
              icon: const Icon(Icons.account_box)),
        ],
      ),
      body: const PostList(),
    );
  }
}
