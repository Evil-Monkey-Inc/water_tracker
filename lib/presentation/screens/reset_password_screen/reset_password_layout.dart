import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/reset_password_screen/bloc/reset_password_bloc.dart';
import 'package:water_tracker/presentation/screens/reset_password_screen/bloc/reset_password_event.dart';
import 'package:water_tracker/presentation/screens/reset_password_screen/bloc/reset_password_state.dart';
import 'package:water_tracker/presentation/screens/sign_in_screen/sign_in_screen.dart';
import 'package:water_tracker/presentation/widgets/atoms/calendar_widget.dart';
import 'package:water_tracker/presentation/widgets/atoms/title_settings_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/assistant_widget.dart';
import 'package:water_tracker/presentation/widgets/organisms/reset_password_form.dart';

class ResetPasswordLayout extends StatefulWidget {
  const ResetPasswordLayout({super.key});

  @override
  State<ResetPasswordLayout> createState() => _ResetPasswordLayoutState();
}

class _ResetPasswordLayoutState extends State<ResetPasswordLayout> {
  static const downFlex = 1;
  static const upperFlex = 3;

  static const space = SizedBox(height: 14);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
          listener: (context, state) {
            if (state is ErrorResetPasswordState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(LocaleKeys.failed_to_reset_password.tr()),
                ),
              );
            }
            if (state is SuccessfullyResetPasswordState) {
              Navigator.of(context).pushReplacementNamed(SignInScreen.route);
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                space,
                AssistantWidget(
                  title: CalendarWidget(
                    dateTime: LocaleKeys.forgot_password.tr(),
                  ),
                  iconButton: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignInScreen.route);
                    },
                    icon: const Icon(Icons.close),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                space,
                TitleSettingWidget(
                  LocaleKeys.forgot_your_password.tr(),
                  subTitle: LocaleKeys.enter_the_address.tr(),
                  upperFlex: upperFlex,
                  downFlex: downFlex,
                ),
                space,
                ResetPasswordForm(
                  isButtonEnabled: state is! LoadingResetPasswordState,
                  onResetPasswordPressed: (String email) => context
                      .read<ResetPasswordBloc>()
                      .add(ForgotPasswordEvent(email)),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
