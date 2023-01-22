import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/get_it.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/bloc/sign_up_bloc.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/sign_up_layout.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const navigationPath = 'PersonalSettingScreen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(getIt<Repository>()),
      child: const SignUpLayout(),
    );
  }
}
