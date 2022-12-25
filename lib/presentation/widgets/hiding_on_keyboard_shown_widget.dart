import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class HidingOnKeyboardShownWidget extends StatefulWidget {
  const HidingOnKeyboardShownWidget({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 3000),
  }) : super(key: key);

  final Widget child;
  final Duration duration;

  @override
  State<HidingOnKeyboardShownWidget> createState() => _HidingOnKeyboardShownWidgetState();
}

class _HidingOnKeyboardShownWidgetState extends State<HidingOnKeyboardShownWidget> with SingleTickerProviderStateMixin {
  var isKeyboardVisible = false;

  void showWidget() => setState(() => isKeyboardVisible = false);

  void hideWidget() => setState(() => isKeyboardVisible = true);

  void updateVisibility(bool isKeyboardVisible) => isKeyboardVisible ? hideWidget() : showWidget();

  @override
  void initState() {
    super.initState();
    final keyboardVisibilityController = KeyboardVisibilityController();
    updateVisibility(keyboardVisibilityController.isVisible);
    keyboardVisibilityController.onChange.forEach((bool visible) => updateVisibility(visible));
  }

  @override
  Widget build(BuildContext context) {

    return  AnimatedContainer(
      duration: widget.duration,

      height: isKeyboardVisible ? 0 : null,
      width: isKeyboardVisible ? 0 : null,
      child: isKeyboardVisible  ? null : widget.child,
    );

    return AnimatedOpacity(
      duration: widget.duration,
      opacity: isKeyboardVisible ? 0 : 1,
      child: AnimatedScale(
        scale: isKeyboardVisible ? 0 : 1,
        duration: widget.duration,
        child: AnimatedContainer(
          duration: widget.duration,

          height: isKeyboardVisible ? 0 : null,
          width: isKeyboardVisible ? 0 : null,
          child: isKeyboardVisible  ? null : widget.child,
        ),
      ),
    );

  }
}
