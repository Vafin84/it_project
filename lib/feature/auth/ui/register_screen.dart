import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_project/app/ui/components/app_text_button.dart';
import 'package:it_project/app/ui/components/app_text_field.dart';
import 'package:it_project/feature/auth/domian/auth_state/auth_cubit.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerPassword2 = TextEditingController();
  final controllerEmail = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Screen"),
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              AppTextField(
                controller: controllerLogin,
                labelText: "Логин",
              ),
              const SizedBox(height: 16),
              AppTextField(
                controller: controllerEmail,
                labelText: "Email",
              ),
              const SizedBox(height: 16),
              AppTextField(
                controller: controllerPassword,
                labelText: "Пароль",
                obscureText: true,
              ),
              const SizedBox(height: 16),
              AppTextField(
                controller: controllerPassword2,
                labelText: "Повторите пароль",
                obscureText: true,
              ),
              const SizedBox(height: 16),
              AppTextButton(
                backgroundColor: Colors.grey,
                onPressed: () {
                  if (formKey.currentState?.validate() == true) {
                    if (controllerPassword.text != controllerPassword2.text) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Пароли не совпадают")));
                    } else {
                      _onTapToSingUp(context.read<AuthCubit>());
                      Navigator.of(context).pop();
                    }
                  }
                },
                text: "Регистрация",
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void _onTapToSingUp(AuthCubit authCubit) => authCubit.singUp(
        username: controllerLogin.text,
        password: controllerPassword.text,
        email: controllerEmail.text,
      );
}
