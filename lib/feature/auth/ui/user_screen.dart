import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_project/app/domain/error_entity.dart';
import 'package:it_project/app/ui/app_loader.dart';
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
                            builder: (context) => const _UserUpdatePasswordDialog(),
                          );
                        },
                        child: const Text("Обновить пароль")),
                    TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => const _UserUpdateDialog(),
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

class _UserUpdateDialog extends StatefulWidget {
  const _UserUpdateDialog({Key? key}) : super(key: key);

  @override
  State<_UserUpdateDialog> createState() => __UserUpdateDialogState();
}

class __UserUpdateDialogState extends State<_UserUpdateDialog> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(16),
      children: [
        AppTextField(controller: usernameController, labelText: "Username"),
        const SizedBox(height: 16),
        AppTextField(controller: emailController, labelText: "Email"),
        const SizedBox(height: 16),
        AppTextButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<AuthCubit>().userUpdate(usernameController.text, emailController.text);
            },
            text: "Применить"),
      ],
    );
  }
}

class _UserUpdatePasswordDialog extends StatefulWidget {
  const _UserUpdatePasswordDialog({Key? key}) : super(key: key);

  @override
  State<_UserUpdatePasswordDialog> createState() => __UserUpdatePasswordDialogState();
}

class __UserUpdatePasswordDialogState extends State<_UserUpdatePasswordDialog> {
  final newPasswordController = TextEditingController();
  final oldPasswordController = TextEditingController();

  @override
  void dispose() {
    newPasswordController.dispose();
    oldPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(16),
      children: [
        AppTextField(controller: oldPasswordController, labelText: "Старый пароль"),
        const SizedBox(height: 16),
        AppTextField(controller: newPasswordController, labelText: "Новый пароль"),
        const SizedBox(height: 16),
        AppTextButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<AuthCubit>().passwordUpdate(
                  oldPassword: oldPasswordController.text.trim(), newPassword: newPasswordController.text.trim());
            },
            text: "Применить"),
      ],
    );
  }
}
