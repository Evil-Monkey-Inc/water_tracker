import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/get_it.dart';
import 'package:water_tracker/presentation/screens/reset_password_screen/bloc/reset_password_bloc.dart';
import 'package:water_tracker/presentation/screens/reset_password_screen/reset_password_layout.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  static const route = 'reset_password_screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ResetPasswordBloc>(
      create: (context) => ResetPasswordBloc(getIt<Repository>()),
      child: const ResetPasswordLayout(),
    );
  }
}
