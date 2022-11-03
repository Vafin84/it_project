import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = Colors.blueAccent,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.maxFinite, 40),
        backgroundColor: backgroundColor,
      ),
      child: Text(text),
    );
  }
}
