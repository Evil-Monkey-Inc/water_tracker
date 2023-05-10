import 'package:flutter/material.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/presentation/screens/general_settings_screen/general_settings_screen.dart';
import 'package:water_tracker/presentation/widgets/atoms/custom_icon_button_widget.dart';

class AssistantWidget extends StatefulWidget {
  const AssistantWidget({super.key, required this.test});

  final Widget test;

  @override
  State<AssistantWidget> createState() => _AssistantWidgetState();
}

class _AssistantWidgetState extends State<AssistantWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        widget.test,
        const Spacer(),
        CustomIconButtonWidget(
          onTap: () {
            Navigator.of(context).pushNamed(GeneralSettingsScreen.route);
          },
          image: Image.asset(Assets.images.settingIcon.path),
        ),
      ],
    );
  }
}
