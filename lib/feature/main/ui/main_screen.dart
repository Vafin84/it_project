import 'package:flutter/material.dart';
import 'package:it_project/feature/auth/domian/entities/user_entity/user_entity.dart';
import 'package:it_project/feature/auth/ui/user_screen.dart';

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
