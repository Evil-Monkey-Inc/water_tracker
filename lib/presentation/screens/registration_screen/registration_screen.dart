import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/get_it.dart';
import 'package:water_tracker/presentation/screens/registration_screen/bloc/registration_bloc.dart';
import 'registration_layout.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocProvider<RegistrationBloc>(
      create: (context) => RegistrationBloc(getIt<Repository>()),
      child: const RegistrationLayout(),
    ));
  }
}
