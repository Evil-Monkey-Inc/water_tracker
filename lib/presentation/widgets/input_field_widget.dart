import 'package:flutter/material.dart';
import 'package:water_tracker/form_validators.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    Key? key,
    required this.labelText,
    this.validator,
  }) : super(key: key);

  final String labelText;
  final ValidatorFunction? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF2F4F8),
        labelText: labelText,
      ),
      validator: validator,
    );
  }
}
