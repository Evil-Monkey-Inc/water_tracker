import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_palette/light_palette.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/atoms/person_image_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/assistant_widget.dart';

class MainScreenCounterWidget extends StatelessWidget {
  const MainScreenCounterWidget({
    super.key,
    required this.count,
    required this.maxCount,
    required this.singleCupWeight,
  })  : currentCupWeight = count * singleCupWeight,
        maxWeight = maxCount * singleCupWeight;

  final int count;
  final int maxCount;
  final int singleCupWeight;

  final int maxWeight;
  final int currentCupWeight;

  static const spaces = SizedBox(height: 24);
  static const betweenCounters = SizedBox(height: 16);
  static const spaceBetween = SizedBox(height: 44);
  static const spaceBetweenManAndMl = SizedBox(height: 42);
  static const size = 36.0;
  static const anotherSize = 18.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaces,
        const AssistantWidget(),
        spaceBetween,
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: LocaleKeys.you_already_got.tr(),
                style: Theme.of(context).textTheme.caption?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: size
                ),
              ),
              TextSpan(text: ' $count', style: Theme.of(context).textTheme.overline),
              TextSpan(
                text: '/$maxCount ',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontSize: size,
                  color: LightPalette.purpleTextColor,
                  fontFamily: Assets.fonts.senRegular,
                ),
              ),
              TextSpan(
                text: LocaleKeys.cups.tr(),
                style: Theme.of(context).textTheme.button?.copyWith(
                  fontSize: size,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        betweenCounters,
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            '$currentCupWeight/$maxWeight ${LocaleKeys.ml.tr()}',
            style: Theme.of(context).textTheme.button?.copyWith(
              fontSize: anotherSize,
              fontWeight: FontWeight.w400
            ),
          ),
        ),
        spaceBetweenManAndMl,
        Align(
          alignment: Alignment.topRight,
          child: PersonImageWidget.mainWay(),
        ),
        spaceBetween,
      ],
    );
  }
}
