import 'package:flutter/material.dart';

class AssistantWidget extends StatefulWidget {
  const AssistantWidget({
    super.key,
    required this.title,
    required this.iconButton,
  });

  final Widget title;
  final Widget iconButton;

  @override
  State<AssistantWidget> createState() => _AssistantWidgetState();
}

class _AssistantWidgetState extends State<AssistantWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(
          flex: 3,
        ),
        Center(child: widget.title),
        const Spacer(
          flex: 2,
        ),
        widget.iconButton,
      ],
    );
  }
}
