import 'package:flutter/material.dart';
import 'package:water_tracker/form_validators.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    Key? key,
    required this.labelText,
    this.validator,
    this.controller,
    required this.obscureText,
    this.suffixIcon,
  }) : super(key: key);

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
    );
  }
}
