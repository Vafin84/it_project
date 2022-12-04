import 'package:flutter/material.dart';
import 'package:it_project/app/ui/components/app_text_button.dart';
import 'package:it_project/app/ui/components/app_text_field.dart';

class AppDialog extends StatefulWidget {
  const AppDialog({
    Key? key,
    required this.label1,
    required this.label2,
    required this.onPressed,
  }) : super(key: key);

  final String label1;
  final String label2;
  final Function(String val1, String val2) onPressed;

  @override
  State<AppDialog> createState() => _AppDialogState();
}

class _AppDialogState extends State<AppDialog> {
  final val1Controller = TextEditingController();
  final val2Controller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    val1Controller.dispose();
    val2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SimpleDialog(
        contentPadding: const EdgeInsets.all(16),
        children: [
          AppTextField(controller: val1Controller, labelText: widget.label1),
          const SizedBox(height: 16),
          AppTextField(controller: val2Controller, labelText: widget.label2),
          const SizedBox(height: 16),
          AppTextButton(
              onPressed: () {
                if (formKey.currentState?.validate() == true) {
                  Navigator.pop(context);
                  widget.onPressed(val1Controller.text, val2Controller.text);
                }
              },
              text: "Применить"),
        ],
      ),
    );
  }
}
