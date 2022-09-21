import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/widgets/login_button_widget.dart';

class LogoForm extends StatefulWidget {
  const LogoForm({Key? key}) : super(key: key);

  @override
  State<LogoForm> createState() => _MyLogFormWidgetState();
}

class _MyLogFormWidgetState extends State<LogoForm> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const Text(
            'Welcome back, Tony!',
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
          const SizedBox(height: 30),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Enter your email',
              filled: true,
              fillColor: Colors.white,
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
          const SizedBox(height: 20),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Enter password',
              filled: true,
              fillColor: Colors.white,
            ),
            validator: (value) {
              if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                return 'Please, enter correct password';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 30),
          LoginButtonWidget(onPressed: () {
            if (formKey.currentState!.validate()) {}
          }),
        ],
      ),
    );
  }
}
