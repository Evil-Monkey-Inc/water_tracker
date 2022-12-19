import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/data/services/notification_serice/notification_service.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/custom_button.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  static const largeSpace = SizedBox(height: 140);
  static const spaces = SizedBox(height: 20);
  static const radiusCircular = 16;
  static const widgetRadius = Radius.circular(16);
  static const heightWidget = 362.0;
  static const widthWidget = 375.0;
  static const textPadding = EdgeInsets.symmetric(horizontal: 34);
  static const upperFlex = 1;
  static const downFlex = Spacer(flex: 1);
  static const spaceBetweenButtons = SizedBox(height: 16);
  static const paddingInsideButton = EdgeInsets.symmetric(horizontal: 24);
  static const spreadRadius = 3.0;
  static const blurRadius = 12.0;
  static const offset = Offset(-4, 2);

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  late final LocalNotificationService service;

  @override
  void initState() {
    service = LocalNotificationService();
    service.intialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: NotificationWidget.heightWidget,
      width: NotificationWidget.widthWidget,
      decoration: BoxDecoration(
        color: CustomTheme.decorationColor,
        borderRadius: const BorderRadius.all(NotificationWidget.widgetRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: NotificationWidget.spreadRadius,
            blurRadius: NotificationWidget.blurRadius,
            offset: NotificationWidget.offset,
          )
        ],
      ),
      child: Column(
        children: [
          NotificationWidget.spaces,
          Image.asset(Assets.images.notification.path),
          NotificationWidget.spaces,
          Padding(
            padding: NotificationWidget.textPadding,
            child: Row(
              children: [
                Flexible(
                  flex: NotificationWidget.upperFlex,
                  child: Text(
                    LocaleKeys.notification_text.tr(),
                    style: CustomTheme.notificationTextSize,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          NotificationWidget.downFlex,
          Padding(
            padding: NotificationWidget.paddingInsideButton,
            child: CustomButton(
              text: LocaleKeys.every_hour.tr(),
              onPressed: () async {
                await service.showNotification(id: 0, title: 'Notification Title', body: 'Some body');
              },
              buttonColor: CustomTheme.buttonLightColor,
              textButtonColor: Colors.black,
            ),
          ),
          NotificationWidget.spaceBetweenButtons,
          Padding(
            padding: NotificationWidget.paddingInsideButton,
            child: CustomButton(
              text: LocaleKeys.every_two_hours.tr(),
              onPressed: () async {},
              buttonColor: CustomTheme.buttonDarkColor,
              textButtonColor: CustomTheme.decorationColor,
            ),
          ),
          NotificationWidget.downFlex
        ],
      ),
    );
  }
}
