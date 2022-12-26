import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/atoms/person_image_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/assistant_widget.dart';

class MainScreenCounterWidget extends StatelessWidget {
  const MainScreenCounterWidget({super.key, required this.count, required this.maxCount, required this.cupWeight})
      : counterCupWeight = count * cupWeight;

  final int count;
  final int maxCount;
  final int cupWeight;
  final int counterCupWeight;
  static const spaces = SizedBox(height: 24);
  static const betweenCounters = SizedBox(height: 16);
  static const spaceBetween = SizedBox(height: 44);
  static const spaceBetweenManAndMl = SizedBox(height: 42);

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
              TextSpan(text: LocaleKeys.you_already_got.tr(), style: CustomTheme().gotCupsTextProperty),
              TextSpan(text: '$count', style: CustomTheme().countTextProperty),
              TextSpan(text: '/$maxCount ', style: CustomTheme().partOfCountTextProperty),
              TextSpan(text: LocaleKeys.cups.tr(), style: CustomTheme().gotCupsTextProperty),
            ],
          ),
        ),
        betweenCounters,
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            '$counterCupWeight${LocaleKeys.ml.tr()}',
            style: CustomTheme().counterMl,
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
