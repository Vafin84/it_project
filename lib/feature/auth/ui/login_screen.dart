import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_project/app/ui/components/app_text_button.dart';
import 'package:it_project/app/ui/components/app_text_field.dart';
import 'package:it_project/feature/auth/domian/auth_state/auth_cubit.dart';
import 'package:it_project/feature/auth/ui/register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
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
                controller: controllerPassword,
                labelText: "Пароль",
                obscureText: true,
              ),
              const SizedBox(height: 16),
              AppTextButton(
                onPressed: () {
                  if (formKey.currentState?.validate() == true) {
                    _onTapToSingIn(context.read<AuthCubit>());
                  }
                },
                text: "Войти",
              ),
              const SizedBox(height: 16),
              AppTextButton(
                backgroundColor: Colors.grey,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterScreen()));
                },
                text: "Регистрация",
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void _onTapToSingIn(AuthCubit authCubit) =>
      authCubit.singIn(username: controllerLogin.text, password: controllerPassword.text);
}
