import 'package:flutter/material.dart';

class AssistantWidget extends StatefulWidget {
  const AssistantWidget({
    super.key,
    this.iconButton,
    required this.title,
    required this.firstFlex,
    required this.secondFlex,
  });

  final Widget title;
  final int firstFlex;
  final int secondFlex;
  final Widget? iconButton;

  @override
  State<AssistantWidget> createState() => _AssistantWidgetState();
}

class _AssistantWidgetState extends State<AssistantWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: widget.firstFlex,
        ),
        Center(child: widget.title),
        Spacer(
          flex: widget.secondFlex,
        ),
        if (widget.iconButton != null) widget.iconButton!,
      ],
    );
  }
}
