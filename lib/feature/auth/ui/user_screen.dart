import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_project/feature/auth/domian/auth_state/auth_cubit.dart';
import 'package:it_project/feature/auth/domian/entities/user_entity/user_entity.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Личный кабинет"),
          actions: [
            IconButton(onPressed: () => context.read<AuthCubit>().getProfile(), icon: const Icon(Icons.refresh)),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  context.read<AuthCubit>().logOut();
                },
                icon: const Icon(Icons.logout)),
          ],
        ),
        body: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            final userEntity = state.whenOrNull(authorized: (userEntity) => userEntity);
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text(userEntity?.username.characters.first.toUpperCase() ?? ""),
                  ),
                  title: Text(userEntity?.username ?? ""),
                  subtitle: Text(userEntity?.email ?? ""),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(onPressed: () {}, child: const Text("Обновить пароль")),
                    TextButton(onPressed: () {}, child: const Text("Обновить данные")),
                  ],
                ),
              ],
            );
          },
        ));
  }
}
