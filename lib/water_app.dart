import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:water_tracker/config/theme/theme_container.dart';
import 'package:water_tracker/config/theme/theme_extension/radius_extension.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/get_it.dart';
import 'package:water_tracker/presentation/screens/goal_screen/goal_screen.dart';
import 'package:water_tracker/presentation/screens/greeting_screen/greeting_screen.dart';
import 'package:water_tracker/presentation/screens/main_screen/main_screen.dart';
import 'package:water_tracker/presentation/screens/notification_screen/notification_screen.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/personal_settings_screen.dart';
import 'package:water_tracker/presentation/screens/sign_in_screen/sign_in_screen.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/sign_up_screen.dart';
import 'package:water_tracker/presentation/screens/social_sign_up_screen/social_sign_up_screen.dart';

class WaterApp extends StatefulWidget {
  const WaterApp({super.key});

  @override
  State<WaterApp> createState() => _WaterAppState();
}

class _WaterAppState extends State<WaterApp> {
  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtensions = <ThemeExtension>[RadiusExtension.instance];

    return FutureBuilder(
      future: getIt<Repository>().getAccessToken(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
       else if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            scrollBehavior: const CupertinoScrollBehavior(),
            theme: ThemeContainer.lightTheme.copyWith(
              extensions: themeExtensions,
            ),
            darkTheme: ThemeContainer.darkTheme.copyWith(
              extensions: themeExtensions,
            ),
            // TODO(Sanya): implement theme mode solution
            themeMode: ThemeMode.light,
            initialRoute: snapshot.hasData
                ? MainScreen.route
                : SocialSignUpScreen.route,
            routes: {
              SocialSignUpScreen.route: (_) => const SocialSignUpScreen(),
              SignInScreen.route: (_) => const SignInScreen(),
              SignUpScreen.route: (_) => const SignUpScreen(),
              PersonalSettingScreen.route: (_) => const PersonalSettingScreen(),
              GoalScreen.route: (_) => const GoalScreen(),
              NotificationScreen.route: (_) => const NotificationScreen(),
              GreetingScreen.route: (_) => const GreetingScreen(),
              MainScreen.route: (_) => const MainScreen(),
            },
            builder: (context, widget) =>
                SafeArea(child: widget ?? const SizedBox()),
          );
        }
        else {
         return Container();
        }
      },
    );
  }
}
