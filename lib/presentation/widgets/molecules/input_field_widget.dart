import 'package:flutter/material.dart';
import 'package:water_tracker/form_validators.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    super.key,
    required this.labelText,
    this.validator,
    this.controller,
    this.obscureText = false,
    this.suffixIcon,
  });

  final String labelText;
  final SingleRegistrationValidatorFunction? validator;
  final TextEditingController? controller;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: labelText, suffixIcon: suffixIcon),
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      cursorColor: Theme.of(context).primaryColor,
    );
  }
}
