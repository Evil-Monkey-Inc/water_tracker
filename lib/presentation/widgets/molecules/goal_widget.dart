import 'dart:async';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/data/models/goal.dart';
import 'package:water_tracker/data/models/goal_widget_model.dart';
import 'package:water_tracker/presentation/widgets/atoms/icon_image_widget.dart';

class GoalWidget extends StatefulWidget {
  const GoalWidget({
    super.key,
    required this.model,
    required this.onChanged,
  });

  final GoalWidgetModel model;
  final void Function(Goal goal, bool isSelected) onChanged;

  @override
  State<GoalWidget> createState() => _GoalWidgetState();
}

class _GoalWidgetState extends State<GoalWidget> with SingleTickerProviderStateMixin {
  static const upperSpace = SizedBox(height: 12);
  static const betweenSpace = SizedBox(height: 14);
  static const paddingBetweenGoals = EdgeInsets.symmetric(horizontal: 16);
  static const widgetHeight = 150;
  static const widgetWidth = 165;
  static const animationTime = 150;
  static const colorAnimationDuration = Duration(milliseconds: 200);
  late final colorAnimationController = AnimationController(
    duration: colorAnimationDuration,
    vsync: this,
  );

  static const sizeAnimationDuration = Duration(seconds: 1);
  late final sizeAnimationController = AnimationController(
    vsync: this,
    duration: sizeAnimationDuration,
    lowerBound: 0.70,
    upperBound: 1.0,
    value: 1,
  )..addListener(() => setState(() {}));

  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: sizeAnimationController.value,
      child: GestureDetector(
        onTap: () => setState(() {
          isSelected = !isSelected;
          widget.onChanged(widget.model.goal, isSelected);
          sizeAnimationController.reverse();
        }),
        onTapDown: (dp) => sizeAnimationController.reverse(),
        onTapUp: (dp) => Timer(const Duration(milliseconds: animationTime), sizeAnimationController.fling),
        onTapCancel: sizeAnimationController.fling,
        child: AnimatedContainer(
          height: widgetHeight.toDouble(),
          width: widgetWidth.toDouble(),
          duration: colorAnimationDuration,
          decoration: BoxDecoration(
            color: isSelected ? CustomTheme.mainColor : CustomTheme.backgroundSexBottomColor,
            borderRadius: CustomTheme.goalCirculars,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              upperSpace,
              IconImageWidget(widget.model.imagePath),
              betweenSpace,
              Padding(
                padding: paddingBetweenGoals,
                child: Text(
                  widget.model.title,
                  textAlign: TextAlign.center,
                  style: CustomTheme()
                      .goalWidgetProp
                      .copyWith(color: isSelected ? CustomTheme.decorationColor : CustomTheme.mainColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
