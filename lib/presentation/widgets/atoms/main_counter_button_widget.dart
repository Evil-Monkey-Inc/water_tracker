import 'package:animated_ripple/animated_ripple.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class MainScreenButtonWidget extends StatelessWidget {
  const MainScreenButtonWidget({super.key, required this.onPressed});
  final VoidCallback onPressed;

  static const _buttonHeight = 0.4;
  static const _animatedRadius = Size.fromRadius(300);
  static const _numberOfRipples = 7;
  static const _duration = Duration(seconds: 1);
  static const _buttonWidth = 30.0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * _buttonHeight,
        child: AnimatedRipple(
          size: _animatedRadius,
          numberOfRipples: _numberOfRipples,
          duration: _duration,
          color: Theme.of(context).primaryColor,
          secondaryColor: Theme.of(context).backgroundColor,
          rippleEffect: RippleEffect.looped,
          onPressed: onPressed,
          icon: SvgPicture.asset(
            Assets.images.waterDrop,
            width: _buttonWidth,
          ),
        ),
      ),
    );
  }
}
