import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_screen_bloc.dart';
import 'package:water_tracker/presentation/screens/notification_screen/notification_layout.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  static const route = 'notification_screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotificationScreenBloc>(
      create: (context) => NotificationScreenBloc(),
      child: const NotificationLayout(),
    );
  }
}
