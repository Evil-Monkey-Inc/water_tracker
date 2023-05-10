import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_palette/light_palette.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/general_settings_screen/general_settings_screen.dart';
import 'package:water_tracker/presentation/widgets/atoms/calendar_widget.dart';
import 'package:water_tracker/presentation/widgets/atoms/custom_icon_button_widget.dart';
import 'package:water_tracker/presentation/widgets/atoms/person_image_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/assistant_widget.dart';

class MainScreenCounterWidget extends StatelessWidget {
  MainScreenCounterWidget({
    super.key,
    required this.count,
    required this.maxCount,
    required this.singleCupWeight,
  })  : currentCupWeight = count * singleCupWeight,
        maxWeight = maxCount * singleCupWeight;

  final int count;
  final int maxCount;
  final int maxWeight;
  final int singleCupWeight;
  final int currentCupWeight;
  final dataNow = DateTime.now();

  static const txtSize = 18.0;
  static const fontSize = 36.0;
  static const dateFormat = 'EEE, d';
  static const spaces = SizedBox(height: 24);
  static const spaceBetween = SizedBox(height: 44);
  static const betweenCounters = SizedBox(height: 16);
  static const spaceBetweenManAndMl = SizedBox(height: 42);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaces,
        AssistantWidget(
          title: CalendarWidget(dateTime: DateFormat(dateFormat).format(dataNow)),
          iconButton: CustomIconButtonWidget(
            onTap: () {
              Navigator.of(context).pushNamed(GeneralSettingsScreen.route);
            },
            image: Image.asset(Assets.images.settingIcon.path),
          ),
        ),
        spaceBetween,
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: LocaleKeys.you_already_got.tr(),
                style: Theme.of(context).textTheme.caption?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: fontSize,
                    ),
              ),
              TextSpan(
                text: ' $count',
                style: Theme.of(context).textTheme.overline,
              ),
              TextSpan(
                text: '/$maxCount ',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: fontSize,
                      color: LightPalette.purpleTextColor,
                      fontFamily: Assets.fonts.senRegular,
                    ),
              ),
              TextSpan(
                text: LocaleKeys.cups.tr(),
                style: Theme.of(context).textTheme.button?.copyWith(
                      fontSize: fontSize,
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
            style: Theme.of(context).textTheme.button?.copyWith(fontSize: txtSize, fontWeight: FontWeight.w400),
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
