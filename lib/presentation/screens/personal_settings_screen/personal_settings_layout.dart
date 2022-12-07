import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/widgets/name_and_skip_widget.dart';

class PersonalSettingsLayout extends StatelessWidget {
  const PersonalSettingsLayout({Key? key}) : super(key: key);

  static const spaces = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: SingleChildScrollView(
          child: Column(
            children: [
              spaces,
              NameAndSkipWidget(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
