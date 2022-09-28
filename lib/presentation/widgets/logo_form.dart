import 'package:flutter/material.dart';
import 'package:water_tracker/form_validators.dart';
import 'package:water_tracker/presentation/widgets/input_field_widget.dart';
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
          InputFieldWidget(
            labelText: 'Enter your email',
            validator: FormValidators.emailValidator,
          ),
          const SizedBox(height: 28),
          InputFieldWidget(
            labelText: 'Enter password',
            validator: FormValidators.passwordValidator,
          ),
          const SizedBox(height: 28),
          CustomButton(
            onPressed: () {
              // TODO: call something on validation
              if (formKey.currentState!.validate()) {}
            },
            text: 'Sing In',
          ),
        ],
      ),
    );
  }
}
