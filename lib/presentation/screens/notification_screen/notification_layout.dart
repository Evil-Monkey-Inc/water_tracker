import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/screens/greeting_screen/greeting_screen.dart';
import 'package:water_tracker/presentation/widgets/molecules/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/notification_widget.dart';

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
        child: Column(
          children: [
            spaces,
            NameAndSkipWidget(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GreetingScreen()));
              },
            ),
            largeSpace,
            const NotificationWidget(),
          ],
        ),
      ),
    );
  }
}
