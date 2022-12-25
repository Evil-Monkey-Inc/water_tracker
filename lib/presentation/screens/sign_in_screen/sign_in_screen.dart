import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/get_it.dart';
import 'package:water_tracker/presentation/screens/sign_in_screen/bloc/sign_in_bloc.dart';
import 'package:water_tracker/presentation/screens/sign_in_screen/sign_in_layout.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInBloc>(create: (context) => SignInBloc(getIt<Repository>()), child: const SignInLayout());
  }
}
