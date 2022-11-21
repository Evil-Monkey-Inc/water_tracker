import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
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
        fillColor: CustomTheme.backgroundFieldColor,
        labelText: labelText,
      ),
      validator: validator,
    );
  }
}
