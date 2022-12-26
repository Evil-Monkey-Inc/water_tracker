import 'package:animated_ripple/animated_ripple.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class MainCounterButtonWidget extends StatefulWidget {
  const MainCounterButtonWidget({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  State<MainCounterButtonWidget> createState() => _MainCounterButtonWidgetState();
}

class _MainCounterButtonWidgetState extends State<MainCounterButtonWidget> {
  static const buttonHeight = 0.4;
  static const animatedRadius = Size.fromRadius(300);
  static const numberOfRipples = 7;
  static const duration = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * buttonHeight,
        child: AnimatedRipple(
          size: animatedRadius,
          numberOfRipples: numberOfRipples,
          duration: duration,
          color: CustomTheme.mainColor,
          secondaryColor: CustomTheme.secondaryColor,
          rippleEffect: RippleEffect.looped,
          onPressed: widget.onPressed,
          icon: SvgPicture.asset(
            Assets.images.waterDrop,
            width: 40,
          ),
        ),
      ),
    );
  }
}
