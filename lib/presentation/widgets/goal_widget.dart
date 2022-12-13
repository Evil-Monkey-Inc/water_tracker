import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class GoalWidget extends StatefulWidget {
  const GoalWidget({
    Key? key,
    required this.titleGoal,
    required this.iconImageWidget,
  }) : super(key: key);
  final String titleGoal;
  final Widget iconImageWidget;

  @override
  State<GoalWidget> createState() => _GoalWidgetState();
}

class _GoalWidgetState extends State<GoalWidget> {
  static const upperSpace = SizedBox(height: 12);
  static const betweenSpace = SizedBox(height: 14);
  static const widgetHeight = 150;
  static const widgetWidth = 163;
  var chooseGoal = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          chooseGoal = !chooseGoal;
        });
      },
      child: Container(
        height: widgetHeight.toDouble(),
        width: widgetWidth.toDouble(),
        decoration: BoxDecoration(
          color: chooseGoal ? CustomTheme.backgroundSexBottomColor : CustomTheme.mainColor,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
          children: [
            upperSpace,
            Container(
              alignment: Alignment.topCenter,
              child: widget.iconImageWidget,
            ),
            betweenSpace,
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                widget.titleGoal,
                style: TextStyle(fontSize: 16, color: chooseGoal ? CustomTheme.mainColor : Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
