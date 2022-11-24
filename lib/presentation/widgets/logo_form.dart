import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/form_validators.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/input_field_widget.dart';
import 'package:water_tracker/presentation/widgets/login_button_widget.dart';

class LogoForm extends StatefulWidget {
  const LogoForm({Key? key}) : super(key: key);

  @override
  State<LogoForm> createState() => _MyLogFormWidgetState();
}

class _MyLogFormWidgetState extends State<LogoForm> {
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
          ),
          spacer,
          InputFieldWidget(
            labelText: LocaleKeys.enter_password.tr(),
            validator: FormValidators.passwordValidator,
          ),
          spacer,
          CustomButton(
            onPressed: () {
              // TODO: call something on validation
              if (formKey.currentState!.validate()) {}
            },
            text: LocaleKeys.sing_in.tr(),
          ),
        ],
      ),
    );
  }
}
