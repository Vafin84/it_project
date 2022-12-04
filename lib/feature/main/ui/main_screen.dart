import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_project/app/ui/components/app_dialog.dart';
import 'package:it_project/feature/auth/domian/entities/user_entity/user_entity.dart';
import 'package:it_project/feature/auth/ui/user_screen.dart';
import 'package:it_project/feature/posts/state/post_cubit/cubit/post_cubit.dart';
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
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AppDialog(
                  label1: "Название",
                  label2: "Контент",
                  onPressed: (val1, val2) {
                    context.read<PostCubit>().createPost({"name": val1, "content": val2});
                  },
                ),
              );
            },
            icon: const Icon(Icons.post_add),
          ),
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
