import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_project/app/domain/error_entity.dart';
import 'package:it_project/app/ui/app_loader.dart';
import 'package:it_project/app/ui/components/app_dialog.dart';
import 'package:it_project/app/ui/components/app_snack_bar.dart';
import 'package:it_project/app/ui/components/app_text_button.dart';
import 'package:it_project/app/ui/components/app_text_field.dart';
import 'package:it_project/feature/auth/domian/auth_state/auth_cubit.dart';

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
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            state.whenOrNull(authorized: (userEntity) {
              if (userEntity.userState?.hasError == true) {
                AppSnackBar.showSnackBarWithError(context, ErrorEntity.fromException(userEntity.userState?.error));
              }
              if (userEntity.userState?.hasData == true) {
                AppSnackBar.showSnackBarWithMessage(context, userEntity.userState?.data);
              }
            });
          },
          builder: (context, state) {
            final userEntity = state.whenOrNull(authorized: (userEntity) => userEntity);
            if (userEntity?.userState?.connectionState == ConnectionState.waiting) {
              return const AppLoader();
            }
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
                    TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AppDialog(
                              label1: "Старый пароль",
                              label2: "Новый пароль",
                              onPressed: (val1, val2) {
                                context.read<AuthCubit>().passwordUpdate(
                                      oldPassword: val1.trim(),
                                      newPassword: val2.trim(),
                                    );
                              },
                            ),
                          );
                        },
                        child: const Text("Обновить пароль")),
                    TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AppDialog(
                              label1: "Username",
                              label2: "Email",
                              onPressed: (val1, val2) {
                                context.read<AuthCubit>().userUpdate(val1, val2);
                              },
                            ),
                          );
                        },
                        child: const Text("Обновить данные")),
                  ],
                ),
              ],
            );
          },
        ));
  }
}
