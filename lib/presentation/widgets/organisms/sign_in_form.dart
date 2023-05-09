import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_palette/light_palette.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/env_variables.dart';
import 'package:water_tracker/form_validators.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/atoms/custom_text_batton.dart';
import 'package:water_tracker/presentation/widgets/molecules/custom_button.dart';
import 'package:water_tracker/presentation/widgets/molecules/input_field_widget.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
    required this.isButtonEnabled,
    required this.onSignInButtonPressed,
  });

  final bool isButtonEnabled;
  final void Function(String email, String password) onSignInButtonPressed;

  @override
  State<SignInForm> createState() => _MyLogFormWidgetState();
}

class _MyLogFormWidgetState extends State<SignInForm> {
  var secureController = true;

  final _pass = TextEditingController();
  final _email = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final emailNode = FocusNode();

  static const fontSize = 24.0;
  static const spacer = SizedBox(height: 28);
  static const forgotPassPadding = EdgeInsets.all(12.0);

  static const visibilityOff = Icon(
    Icons.visibility_off,
    color: LightPalette.primaryColor,
  );

  static const visibility = Icon(
    Icons.visibility,
    color: LightPalette.primaryColor,
  );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Text(
            LocaleKeys.welcome_back_tony.tr(),
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: fontSize,
                ),
          ),
          spacer,
          InputFieldWidget(
            labelText: LocaleKeys.enter_your_email.tr(),
            validator: FormValidators.emailValidator,
            controller: _email,
          ),
          spacer,
          InputFieldWidget(
            labelText: LocaleKeys.enter_password.tr(),
            validator: FormValidators.passwordRegValidator,
            controller: _pass,
            obscureText: secureController,
            suffixIcon: GestureDetector(
              onTap: () => setState(() => secureController = !secureController),
              child: secureController ? visibility : visibilityOff,
            ),
          ),
          Padding(
            padding: forgotPassPadding,
            child: CustomTextButton(
              onPressed: () {

              },
             buttonText: LocaleKeys.forgot_password.tr(),
            ),
          ),
          CustomButton(
            onPressed: () {
              if (EnvVariables.disableValidation ||
                  formKey.currentState!.validate()) {
                widget.onSignInButtonPressed(_email.text, _pass.text);
              }
            },
            text: LocaleKeys.sign_in.tr(),
            isEnabled: true,
            buttonColor: Theme.of(context).primaryColor,
            textButtonColor: Theme.of(context).primaryColorLight,
          ),
        ],
      ),
    );
  }
}
