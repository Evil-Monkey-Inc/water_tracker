import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/screens/notification_screen/notification_layout.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return  NotificationLayout(email: email);
  }
}
