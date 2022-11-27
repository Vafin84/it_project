import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_project/app/ui/app_loader.dart';
import 'package:it_project/feature/posts/state/post_cubit/cubit/post_cubit.dart';
import 'package:it_project/feature/posts/ui/post_item.dart';

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostCubit, PostState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state.postList.isNotEmpty) {
          return ListView.builder(
            itemCount: state.postList.length,
            itemBuilder: (context, index) {
              return PostItem(postEntity: state.postList.elementAt(index));
            },
          );
        }
        if (state.asyncSnapshot?.connectionState == ConnectionState.waiting) {
          return const AppLoader();
        }
        return const SizedBox.shrink();
      },
    );
  }
}
