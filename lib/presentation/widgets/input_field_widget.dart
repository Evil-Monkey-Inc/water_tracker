import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/form_validators.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    Key? key,
    required this.labelText,
    this.validator,
    this.controller,
  }) : super(key: key);

  final String labelText;
  final SingleRegistrationValidatorFunction? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
      ),
      validator: validator,
      controller: controller,
    );
  }
}
