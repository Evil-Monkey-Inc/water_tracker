import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/presentation/screens/greeting_screen/greeting_screen.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_screen_event.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_screen_state.dart';
import 'package:water_tracker/presentation/screens/notification_screen/notification_screen.dart';
import 'package:water_tracker/presentation/widgets/molecules/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/notification_widget.dart';

import '../goal_screen/bloc/goal_event.dart';
import 'bloc/notification_screen_bloc.dart';

class NotificationLayout extends StatelessWidget {
  const NotificationLayout({super.key});

  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
  static const largeSpace = SizedBox(height: 140);
  static const spaces = SizedBox(height: 24);
  static const radiusCircular = 16;
  static const widgetRadius = Radius.circular(16);
  static const spreadRadius = 1.0;
  static const blurRadius = 12.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: BlocConsumer<NotificationScreenBloc, NotificationScreenState>(
          listener: (context, state) {
            if (state is SuccessfullySkipButtonState){
              Navigator.of(context).pushNamed(GreetingScreen.route);
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                spaces,
                NameAndSkipWidget(
                  onPressed: () => context.read<NotificationScreenBloc>().add(SkipNotificationScreenEvent()),
                ),
                largeSpace,
                const NotificationWidget(),
              ],
            );
          },
        ),
      ),
    );
  }
}
