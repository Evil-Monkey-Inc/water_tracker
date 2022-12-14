import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/data/models/goals.dart';

class GoalWidget extends StatefulWidget {
  const GoalWidget({
    Key? key,
    required this.titleGoal,
    required this.iconImageWidget,
    required this.onChanged,
  }) : super(key: key);

  final String titleGoal;
  final Widget iconImageWidget;
  final void Function(Goals goals) onChanged;

  @override
  State<GoalWidget> createState() => _GoalWidgetState();
}

class _GoalWidgetState extends State<GoalWidget> {
  static const upperSpace = SizedBox(height: 12);
  static const betweenSpace = SizedBox(height: 14);
  static const widgetHeight = 150;
  static const widgetWidth = 165;
  static const iconTitleSize = 16;
  var chooseGoal = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(Goals.drinkWater);
        setState(() => chooseGoal = !chooseGoal);
      },
      child: Container(
        height: widgetHeight.toDouble(),
        width: widgetWidth.toDouble(),
        decoration: BoxDecoration(
          color: chooseGoal ? CustomTheme.backgroundSexBottomColor : CustomTheme.mainColor,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            upperSpace,
            Container(child: widget.iconImageWidget),
            betweenSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                widget.titleGoal,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: iconTitleSize.toDouble(),
                  color: chooseGoal ? CustomTheme.mainColor : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
