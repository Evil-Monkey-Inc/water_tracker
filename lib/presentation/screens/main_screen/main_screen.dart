import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/get_it.dart';
import 'package:water_tracker/presentation/screens/main_screen/bloc/main_screen_bloc.dart';
import 'package:water_tracker/presentation/screens/main_screen/main_layout.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainScreenBloc>(
      create: (context) => MainScreenBloc(getIt<Repository>()),
      child:  MainLayout(email: email),
    );
  }
}
