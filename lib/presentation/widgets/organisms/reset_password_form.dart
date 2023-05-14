import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/form_validators.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/molecules/custom_button.dart';
import 'package:water_tracker/presentation/widgets/molecules/input_field_widget.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({
    super.key,
    required this.onResetPasswordPressed,
  });

  final VoidCallback onResetPasswordPressed;

  @override
  State<ResetPasswordForm> createState() => _MyLogFormWidgetState();
}

class _MyLogFormWidgetState extends State<ResetPasswordForm> {
  final _email = TextEditingController();
  final formKey = GlobalKey<FormState>();

  static const space = SizedBox(height: 28);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          space,
          InputFieldWidget(
            labelText: LocaleKeys.enter_your_email.tr(),
            validator: FormValidators.emailValidator,
            controller: _email,
          ),
          space,
          CustomButton(
            onPressed: widget.onResetPasswordPressed,
            text: LocaleKeys.reset_password.tr(),
            isEnabled: true,
            buttonColor: Theme.of(context).primaryColor,
            textButtonColor: Theme.of(context).primaryColorLight,
          ),
        ],
      ),
    );
  }
}
