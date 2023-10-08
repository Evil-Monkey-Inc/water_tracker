import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/widgets/tokens/colors.dart';
import 'package:flutter_web/presentation/widgets/tokens/spacing.dart';

class DescriptionCardWidget extends StatelessWidget {
  const DescriptionCardWidget({
    super.key,
    this.size,
    this.infoBlock,
    this.backGroundColor,
  });

  final double? size;
  final Widget? infoBlock;
  final Color? backGroundColor;

  static const containerSize = 420.0;
  static const defaultFontSize = Spacing.twentyPX;
  static const titleFontSize = Spacing.twentyFourPX;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? containerSize,
      height: size ?? containerSize,
      color: backGroundColor ?? DefaultColors.lightGrey,
      child: infoBlock!,
    );
  }
}
