import 'package:flutter/material.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/presentation/widgets/calendar_widget.dart';
import 'package:water_tracker/presentation/widgets/custom_icon_button_widget.dart';

class AssistantWidget extends StatelessWidget {
  const AssistantWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButtonWidget(onTap: () {}, image: Image.asset(Assets.images.customCloseIcon.path)),
        const Spacer(),
        const CalendarWidget(),
        const Spacer(),
        CustomIconButtonWidget(onTap: () {}, image: Image.asset(Assets.images.settingIcon.path)),
      ],
    );
  }
}
