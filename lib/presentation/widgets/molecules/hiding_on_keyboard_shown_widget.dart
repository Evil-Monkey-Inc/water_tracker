import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class HidingOnKeyboardShownWidget extends StatefulWidget {
  const HidingOnKeyboardShownWidget({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 300),
    required this.childHeight,
  });

  final Widget child;
  final Duration duration;
  final double childHeight;

  @override
  State<HidingOnKeyboardShownWidget> createState() =>
      _HidingOnKeyboardShownWidgetState();
}

class _HidingOnKeyboardShownWidgetState
    extends State<HidingOnKeyboardShownWidget>
    with SingleTickerProviderStateMixin {
  static const curve = Curves.fastOutSlowIn;

  var isKeyboardVisible = false;

  void showWidget() => setState(() => isKeyboardVisible = false);

  void hideWidget() => setState(() => isKeyboardVisible = true);

  void updateVisibility(bool isKeyboardVisible) =>
      isKeyboardVisible ? hideWidget() : showWidget();

  double get height => isKeyboardVisible ? 0.0 : widget.childHeight;

  double get opacity => isKeyboardVisible ? 0.0 : 1.0;

  @override
  void initState() {
    super.initState();
    final keyboardVisibilityController = KeyboardVisibilityController();
    updateVisibility(keyboardVisibilityController.isVisible);
    keyboardVisibilityController.onChange.forEach(updateVisibility);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: curve,
      duration: widget.duration,
      alignment: Alignment.topCenter,
      height: height,
      child: AnimatedOpacity(
        curve: curve,
        duration: widget.duration,
        opacity: opacity,
        child: widget.child,
      ),
    );
  }
}
