import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/get_it.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_bloc.dart';
import 'package:water_tracker/presentation/screens/notification_screen/notification_layout.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<NotificationBloc>(
        create: (context) => NotificationBloc(getIt<Repository>()),
        child: const NotificationLayout(),
      ),
    );
  }
}
