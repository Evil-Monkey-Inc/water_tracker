import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/form_validators.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/input_field_widget.dart';
import 'package:water_tracker/presentation/widgets/login_button_widget.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _MyLogFormWidgetState();
}

class _MyLogFormWidgetState extends State<RegisterForm> {
  static const spacer = SizedBox(height: 28);
  final _pass = TextEditingController();
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
            LocaleKeys.start_your_journey.tr(), // todo :remove and add localization
            style: CustomTheme.greetingsProperty,
          ),
          spacer,
          InputFieldWidget(
            labelText: LocaleKeys.enter_your_email.tr(),
            validator: FormValidators.emailValidator,
          ),
          spacer,
          InputFieldWidget(
            labelText: LocaleKeys.enter_password.tr(),
            validator: FormValidators.passwordValidator,
            controller: _pass,
          ),
          spacer,
          InputFieldWidget(
            labelText: LocaleKeys.re_enter_your_password.tr(),
            validator: (value) => FormValidators.repeatPasswordValidator(value, _pass.text),
          ),
          spacer,
          CustomButton(
            onPressed: () {
              // TODO: call something on validation
              if (formKey.currentState!.validate()) {}
            },
            text: LocaleKeys.sing_up.tr(),
          ),
        ],
      ),
    );
  }
}
