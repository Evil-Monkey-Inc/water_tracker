import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/get_it.dart';
import 'package:water_tracker/presentation/screens/goal_screen/bloc/goal_bloc.dart';
import 'package:water_tracker/presentation/screens/goal_screen/goal_layout.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return BlocProvider<GoalBloc>(
      create: (context) => GoalBloc(getIt<Repository>()),
      child:  const GoalLayout(),
    );
  }
}
