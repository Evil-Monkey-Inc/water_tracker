import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/widgets/login_button_widget.dart';

class LogoForm extends StatefulWidget {
  const LogoForm({Key? key}) : super(key: key);

  @override
  State<LogoForm> createState() => _MyLogFormWidgetState();
}

class _MyLogFormWidgetState extends State<LogoForm> {
  final formKey = GlobalKey<FormState>();

  final emailNode = FocusNode();

  @override
  void initState() {
    emailNode.addListener(() => setState(() {}));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const Text(
            'Welcome back, Tony!',
            style: TextStyle(fontSize: 28, color: Color(0xFF292D32)),
          ),
          const SizedBox(height: 28),
          TextFormField(
            focusNode: emailNode,
            decoration: InputDecoration(
              labelText: 'Enter your email',
            ),
            validator: (value) {
              if (value!.isEmpty ||
                  !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) {
                return 'Please, enter correct email';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 24),
          TextFormField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              labelText: 'Enter password',
              filled: true,
              fillColor: const Color(0xFFF2F4F8),
            ),
            validator: (value) {
              if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                return 'Please, enter correct password';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 28),
          LoginButtonWidget(onPressed: () {
            // TODO: call something on validation
            if (formKey.currentState!.validate()) {}
          }),
        ],
      ),
    );
  }
}
