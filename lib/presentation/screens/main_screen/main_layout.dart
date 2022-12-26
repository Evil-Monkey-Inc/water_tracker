import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/main_screen/bloc/main_screen_bloc.dart';
import 'package:water_tracker/presentation/widgets/atoms/main_counter_button_widget.dart';
import 'package:water_tracker/presentation/screens/main_screen/bloc/main_screen_event.dart';
import 'package:water_tracker/presentation/screens/main_screen/bloc/main_screen_state.dart';
import 'package:water_tracker/presentation/widgets/molecules/main_screen_button_widget.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  static const cupsMaxCount = MainScreenBloc.maxCupCount;
  static const singleCupWeight = MainScreenBloc.singleCupWeight;
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 28.0);

  @override
  void initState() {
    context.read<MainScreenBloc>().add(AppLaunchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: BlocConsumer<MainScreenBloc, MainScreenState>(
          listener: (context, state) {
            if (state is ErrorMainScreenState) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: Text(LocaleKeys.failed_to_increment_count.tr()),
                ),
              );
            }
          },
          builder: (context, state) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                MainCounterButtonWidget(
                  onPressed: () => context.read<MainScreenBloc>().add(SaveCounterEvent()),
                ),
                MainScreenButtonWidget(
                  maxCount: cupsMaxCount,
                  count: state.counter,
                  cupWeight: singleCupWeight,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
