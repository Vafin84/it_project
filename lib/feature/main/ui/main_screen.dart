import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_project/feature/auth/domian/auth_state/auth_cubit.dart';
import 'package:it_project/feature/auth/domian/entities/user_entity/user_entity.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.userEntity}) : super(key: key);

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
        actions: [
          IconButton(onPressed: () => context.read<AuthCubit>().refreshToken(), icon: const Icon(Icons.refresh)),
          IconButton(onPressed: () => context.read<AuthCubit>().logOut(), icon: const Icon(Icons.logout)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Пользователь: ${userEntity.username}"),
            const SizedBox(height: 20),
            Text("accessToken: ${userEntity.accessToken}"),
            const SizedBox(height: 20),
            Text("refreshToken: ${userEntity.refreshToken}"),
          ],
        ),
      ),
    );
  }
}
