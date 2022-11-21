import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/form_validators.dart';
import 'package:water_tracker/presentation/widgets/input_field_widget.dart';
import 'package:water_tracker/presentation/widgets/login_button_widget.dart';

class LogoForm extends StatefulWidget {
  const LogoForm({Key? key}) : super(key: key);

  @override
  State<LogoForm> createState() => _MyLogFormWidgetState();
}

class _MyLogFormWidgetState extends State<LogoForm> {
  static const greetings = 'Welcome back, Tony!';
  static const emailLabelText = 'Enter your email';
  static const passwordLabelText = 'Enter password';
  static const singIn = 'Sing In';
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
            greetings,
            style: CustomTheme.greetingsProperty,
          ),
          const SizedBox(height: 28),
          InputFieldWidget(
            labelText: emailLabelText,
            validator: FormValidators.emailValidator,
          ),
          const SizedBox(height: 28),
          InputFieldWidget(
            labelText: passwordLabelText,
            validator: FormValidators.passwordValidator,
          ),
          const SizedBox(height: 28),
          CustomButton(
            onPressed: () {
              // TODO: call something on validation
              if (formKey.currentState!.validate()) {}
            },
            text: singIn,
          ),
        ],
      ),
    );
  }
}
