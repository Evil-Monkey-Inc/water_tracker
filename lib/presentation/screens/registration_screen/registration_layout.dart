import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/presentation/screens/registration_screen/bloc/registration_bloc.dart';
import 'package:water_tracker/presentation/screens/registration_screen/bloc/registration_events.dart';
import 'package:water_tracker/presentation/screens/registration_screen/bloc/registration_state.dart';
import 'package:water_tracker/presentation/widgets/already_have_an_account.widget.dart';
import 'package:water_tracker/presentation/widgets/logo_widget.dart';
import 'package:water_tracker/presentation/widgets/personal_image_widget.dart';
import 'package:water_tracker/presentation/widgets/privacy_policy_and_terms_widget.dart';
import 'package:water_tracker/presentation/widgets/registration_form.dart';

class RegistrationLayout extends StatefulWidget {
  const RegistrationLayout({Key? key}) : super(key: key);

  static const spaces = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  State<RegistrationLayout> createState() => _RegistrationLayoutState();
}

class _RegistrationLayoutState extends State<RegistrationLayout> {
  @override
  void initState() {
    context.read<RegistrationBloc>().add(LoadedRegistrationEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: RegistrationLayout.paddingHorizontal,
        child: BlocBuilder<RegistrationBloc, RegistrationState>(
          builder: (BuildContext context, state) {
            if (state is InitialRegistrationState) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RegistrationLayout.spaces,
                    const LogoWidget(),
                    RegistrationLayout.spaces,
                    PersonImageWidget.womanWay(),
                    const RegisterForm(),
                    const PrivacyPolicyAndTermsWidget(),
                    RegistrationLayout.spaces,
                    const AlreadyHaveAnAccountWidget(),
                    RegistrationLayout.spaces,
                  ],
                ),
              );
            }
            throw Exception('unhandled exception in Registration Layout');
          },
        ),
      ),
    );
  }
}
