import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/env_variables.dart';
import 'package:water_tracker/form_validators.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/custom_button.dart';
import 'package:water_tracker/presentation/widgets/input_field_widget.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key, required this.isButtonEnabled, required this.onSignUpButtonPressed}) : super(key: key);

  final void Function(String email, String password) onSignUpButtonPressed;
  final bool isButtonEnabled;

  @override
  State<SignUpForm> createState() => _MyLogFormWidgetState();
}

class _MyLogFormWidgetState extends State<SignUpForm> {
  static const spacer = SizedBox(height: 28);
  final _pass = TextEditingController();
  final _email = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final emailNode = FocusNode();

  @override
  void dispose() {
    _pass.dispose();
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Text(
            LocaleKeys.start_your_journey.tr(),
            style: CustomTheme.greetingsProperty,
          ),
          spacer,
          InputFieldWidget(
            labelText: LocaleKeys.enter_your_email.tr(),
            validator: FormValidators.emailValidator,
            controller: _email,
            obscureText: false,
          ),
          spacer,
          InputFieldWidget(
            labelText: LocaleKeys.enter_password.tr(),
            validator: FormValidators.passwordRegValidator,
            controller: _pass,
            obscureText: false,
          ),
          spacer,
          InputFieldWidget(
            labelText: LocaleKeys.re_enter_your_password.tr(),
            validator: (value) => FormValidators.repeatPasswordValidator(value, _pass.text),
            obscureText: false,
          ),
          spacer,
          CustomButton(
            isEnabled: widget.isButtonEnabled,
            onPressed: () {
              if (EnvVariables.disableValidation || formKey.currentState!.validate()) {
                widget.onSignUpButtonPressed(_email.text, _pass.text);
              }
            },
            text: LocaleKeys.sign_up.tr(),
            buttonColor: CustomTheme.buttonDarkColor,
            textButtonColor: CustomTheme.decorationColor,
          ),
        ],
      ),
    );
  }
}
