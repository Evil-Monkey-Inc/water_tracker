import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/get_it.dart';
import 'package:water_tracker/presentation/screens/social_sign_up_screen/social_sign_up_layout.dart';
import 'package:water_tracker/presentation/screens/social_sign_up_screen/bloc/social_sign_up_bloc.dart';

class SocialSignUpScreen extends StatelessWidget {
  const SocialSignUpScreen({super.key});

  static const route = 'social_sign_up_screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SocialSignUpBloc>(
      create: (context) => SocialSignUpBloc(getIt<Repository>()),
      child: const SocialSignUpLayout(),
    );
  }
}
