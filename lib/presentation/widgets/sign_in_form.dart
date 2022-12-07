import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/form_validators.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/custom_button.dart';
import 'package:water_tracker/presentation/widgets/input_field_widget.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key, required this.onSignInButtonPressed, required this.isButtonEnabled}) : super(key: key);
  final void Function(String email, String password) onSignInButtonPressed;
  final bool isButtonEnabled;

  @override
  State<SignInForm> createState() => _MyLogFormWidgetState();
}

class _MyLogFormWidgetState extends State<SignInForm> {
  final _pass = TextEditingController();
  final _email = TextEditingController();
  static const spacer = SizedBox(height: 28);
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
          Text(
            LocaleKeys.welcome_back_tony.tr(),
            style: CustomTheme.greetingsProperty,
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
          ),
          spacer,
          CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) widget.onSignInButtonPressed(_email.text, _pass.text);
            },
            text: LocaleKeys.sign_in.tr(),
            isEnabled: true,
          ),
        ],
      ),
    );
  }
}
