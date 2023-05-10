import 'package:flutter/material.dart';
import 'package:water_tracker/data/models/gender.dart';
import 'package:water_tracker/data/models/theme.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class SelectSexButton extends StatefulWidget {
  const SelectSexButton({
    super.key,
    required this.firstTabTitle,
    required this.secondTabTitle,
    required this.aboutTabBar,
    required this.onChanged,
    required this.data,
  });

  final Object data;
  final String aboutTabBar;
  final String firstTabTitle;
  final String secondTabTitle;
  final void Function(dynamic) onChanged;

  @override
  State<SelectSexButton> createState() => _SelectSexButtonState();
}

class _SelectSexButtonState extends State<SelectSexButton> with SingleTickerProviderStateMixin {
  late final TabController controller;
  final circularRadius = BorderRadius.circular(40.0);

  static const countTabs = 2;
  static const fontSize = 16.0;
  static const buttonWeight = 55.0;
  static const heightButton = 72.0;
  static const indicatorWeight = 2.0;
  static const space = SizedBox(height: 14);
  static const spaceInsideButton = EdgeInsets.all(8);

  @override
  void initState() {
    controller = TabController(length: countTabs, vsync: this);
    controller.addListener(() {
      if (widget.data == ApplicationTheme.light || widget.data == ApplicationTheme.dark) {
        return widget.onChanged(ApplicationTheme.values[controller.index]);
      }
      if (widget.data == Gender.male || widget.data == Gender.female) {
        return widget.onChanged(Gender.values[controller.index]);
      }
    }); // controller.index
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sexTextProperty = Text(
      widget.aboutTabBar,
      style: Theme.of(context).textTheme.headline4?.copyWith(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: fontSize,
          ),
    );
    return Column(
      children: [
        Align(alignment: Alignment.bottomLeft, child: sexTextProperty),
        space,
        Container(
          height: heightButton,
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Theme.of(context).dividerColor,
            borderRadius: circularRadius,
          ),
          child: Column(
            children: [
              Padding(
                padding: spaceInsideButton,
                child: SizedBox(
                  height: buttonWeight,
                  child: DefaultTabController(
                    length: countTabs,
                    child: TabBar(
                      controller: controller,
                      unselectedLabelColor: Theme.of(context).primaryColor,
                      labelColor: Theme.of(context).primaryColorLight,
                      indicatorColor: Theme.of(context).primaryColor,
                      indicatorWeight: indicatorWeight,
                      indicator: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: circularRadius,
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            widget.firstTabTitle,
                            style: TextStyle(
                              fontSize: fontSize,
                              fontFamily: Assets.fonts.senRegular,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            widget.secondTabTitle,
                            style: TextStyle(
                              fontSize: fontSize,
                              fontFamily: Assets.fonts.senRegular,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
