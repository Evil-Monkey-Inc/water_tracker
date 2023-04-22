import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/data/models/gender.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
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
  late final TabController controller;
  var isSelected = true;


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
    final sexTextProperty = Text(
      LocaleKeys.sex.tr(),
      style: Theme.of(context).textTheme.headline4?.copyWith(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
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
                      unselectedLabelColor: Theme.of(context).primaryColor,
                      labelColor: Theme.of(context).primaryColorLight,
                      indicatorColor: Theme.of(context).primaryColor,
                      indicatorWeight: indicatorWeight,
                      indicator: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            LocaleKeys.man.tr(),
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: Assets.fonts.senRegular,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            LocaleKeys.woman.tr(),
                            style: TextStyle(
                              fontSize: 16,
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
