import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/presentation/widgets/atoms/calendar_widget.dart';
import 'package:water_tracker/presentation/widgets/atoms/custom_icon_button_widget.dart';

class AssistantWidget extends StatefulWidget {
  const AssistantWidget({super.key});

  @override
  State<AssistantWidget> createState() => _AssistantWidgetState();
}

class _AssistantWidgetState extends State<AssistantWidget> {
  final dataNow = DateTime.now();
  static const dateFormat = 'EEE, d';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        CalendarWidget(dateTime: DateFormat(dateFormat).format(dataNow)),
        const Spacer(),
        CustomIconButtonWidget(onTap: () {}, image: Image.asset(Assets.images.settingIcon.path)),
      ],
    );
  }
}
