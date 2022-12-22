import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/main_screen/bloc/main_screen_event.dart';
import 'package:water_tracker/presentation/widgets/assistant_widget.dart';
import 'package:water_tracker/presentation/widgets/custom_button.dart';
import 'package:water_tracker/presentation/widgets/person_image_widget.dart';
import 'bloc/main_screen_bloc.dart';
import 'bloc/main_screen_state.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 28.0);
  static const spaces = SizedBox(height: 24);
  static const betweenCounters = SizedBox(height: 16);
  static const spaceBetween = SizedBox(height: 44);
  static const spaceBetweenManAndMl = SizedBox(height: 42);

  final _counterMl = 0;

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
        child: BlocBuilder<MainScreenBloc, CounterState>(
          builder: (context, state) {
            return Column(
              children: [
                spaces,
                const AssistantWidget(),
                spaceBetween,
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: LocaleKeys.you_already_got.tr(), style: CustomTheme.gotCupsTextProperty),
                      TextSpan(text: ' ${state.counter}', style: CustomTheme.countTextProperty),
                      const TextSpan(text: '/8 ', style: CustomTheme.partOfCountTextProperty),
                      TextSpan(text: LocaleKeys.cups.tr(), style: CustomTheme.gotCupsTextProperty),
                    ],
                  ),
                ),
                betweenCounters,
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '$_counterMl${LocaleKeys.ml.tr()}',
                    style: CustomTheme.counterMl,
                  ),
                ),
                spaceBetweenManAndMl,
                Align(
                  alignment: Alignment.topRight,
                  child: PersonImageWidget.mainWay(),
                ),
                spaceBetween,
                CustomButton(
                  text: 'ad',
                  onPressed: () {
                    print(state.counter);
                    context.read<MainScreenBloc>().add(SaveCounterEvent(state.counter));
                    context.read<MainScreenBloc>().add(AppLaunchEvent());
                  },
                  buttonColor: Colors.red,
                  textButtonColor: Colors.red,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
// context.read<MainScreenBloc>().add(SaveCounterEvent(counterCups))
// counterCups < 8 ? _incrementCounterCups : null
