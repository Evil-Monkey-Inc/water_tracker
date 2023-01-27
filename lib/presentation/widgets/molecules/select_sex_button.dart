import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/data/models/gender.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

class SelectSexButton extends StatefulWidget {
  const SelectSexButton({super.key, required this.onChanged});
  final void Function(Gender) onChanged;

  @override
  State<SelectSexButton> createState() => _SelectSexButtonState();
}

class _SelectSexButtonState extends State<SelectSexButton>
    with SingleTickerProviderStateMixin {
  static const indicatorWeight = 2.0;
  static const countTabs = 2;
  static const buttonWeight = 55.0;
  static const heightButton = 72.0;
  static const space = SizedBox(height: 14);
  static const spaceInsideButton = EdgeInsets.all(8);
  final sexTextProperty =
      Text(LocaleKeys.sex.tr(), style: CustomTheme.sexStyleProperty);
  final tabMaleTextProperty =
      Text(LocaleKeys.man.tr(), style: CustomTheme.tabTextFemaleStyleProperty);
  final tabFemaleTextProperty = Text(
    LocaleKeys.woman.tr(),
    style: CustomTheme.tabTextFemaleStyleProperty,
  );

  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: countTabs, vsync: this);
    controller.addListener(
      () => widget.onChanged(Gender.values[controller.index]),
    ); // controller.index
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: Alignment.bottomLeft, child: sexTextProperty),
        space,
        Container(
          height: heightButton,
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: CustomTheme.backgroundSexBottomColor,
            borderRadius: BorderRadius.circular(40),
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
                      unselectedLabelColor: CustomTheme.mainColor,
                      labelColor: CustomTheme.sexLabelColor,
                      indicatorColor: CustomTheme.mainColor,
                      indicatorWeight: indicatorWeight,
                      indicator: BoxDecoration(
                        color: CustomTheme.mainColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            LocaleKeys.man.tr(),
                            style: CustomTheme().tabMaleTextProperty,
                          ),
                        ),
                        Tab(
                          child: Text(
                            LocaleKeys.woman.tr(),
                            style: CustomTheme().tabFemaleTextProperty,
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
