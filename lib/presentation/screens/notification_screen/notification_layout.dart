import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/greeting_screen/greeting_screen.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_bloc.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_event.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_state.dart';
import 'package:water_tracker/presentation/widgets/molecules/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/notification_widget.dart';

class NotificationLayout extends StatefulWidget {
  const NotificationLayout({super.key});

  @override
  State<NotificationLayout> createState() => _NotificationLayoutState();
}

class _NotificationLayoutState extends State<NotificationLayout> {
  static const idEveryHourNotification = 0;
  static const idEveryTwoHoursNotification = 1;

  static const spaces = SizedBox(height: 24);
  static const largeSpace = SizedBox(height: 140);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
  
  @override
  void initState() {
    context.read<NotificationScreenBloc>().add(SetupNotificationEvent());
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: BlocConsumer<NotificationScreenBloc, NotificationState>(
          listener: (context, state) {
            if(state is SuccessfullyShowNotificationState){
              Navigator.of(context).pushNamed(GreetingScreen.route);
            }
            if (state is SuccessfullySkipButtonState) {
              Navigator.of(context).pushNamed(GreetingScreen.route);
            }
          },
          builder: (context, state) {
            return Column(
              children: [
               spaces,
                NameAndSkipWidget(
                  onPressed: () => context
                      .read<NotificationScreenBloc>()
                      .add(SkipNotificationEvent()),
                ),
               largeSpace,
                NotificationWidget(
                  everyHour: () => context.read<NotificationScreenBloc>().add(
                          ShowEveryHourNotificationEvent(
                            idEveryHourNotification,
                            LocaleKeys.time_to_drink.tr(),
                            LocaleKeys.track_water_balance.tr(),
                            LocaleKeys.payload.tr(),
                          ),
                        ),
                  everyTwoHour: () {
                    context.read<NotificationScreenBloc>().add(
                          ShowEveryTwoHoursNotificationEvent(
                            idEveryTwoHoursNotification,
                            LocaleKeys.time_to_drink.tr(),
                            LocaleKeys.track_water_balance.tr(),
                            LocaleKeys.payload.tr(),
                          ),
                        );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
