import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

class SelectSexButton extends StatefulWidget {
  const SelectSexButton({Key? key, required this.onChanged}) : super(key: key);
  final void Function(Gender) onChanged;

  @override
  State<SelectSexButton> createState() => _SelectSexButtonState();
}

class _SelectSexButtonState extends State<SelectSexButton> with SingleTickerProviderStateMixin {
  var indicatorWeight = 2.0;
  static const countTabs = 2;
  var buttonWeight = 62.0;
  static const heightButton = 80.0;
  static const space = SizedBox(height: 20);
  static const spaceInsideButton = EdgeInsets.all(8);
  var sexTextProperty = Text(LocaleKeys.sex.tr(), style: const TextStyle(fontSize: 20));
  var tabMaleTextProperty = Text(LocaleKeys.man.tr(), style: const TextStyle(fontSize: 20));
  var tabFemaleTextProperty = Text(LocaleKeys.woman.tr(), style: const TextStyle(fontSize: 20));

  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: countTabs, vsync: this);
    // TODO: CHANGE GENDER WITH INDEX
    controller.addListener(() => widget.onChanged(Gender.values[controller.index])); // controller.index
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
          decoration:
              BoxDecoration(color: CustomTheme.backgroundSexBottomColor, borderRadius: BorderRadius.circular(40)),
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
                      indicator: BoxDecoration(color: CustomTheme.mainColor, borderRadius: BorderRadius.circular(40)),
                      tabs: [
                        Tab(child: tabMaleTextProperty),
                        Tab(child: tabFemaleTextProperty),
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
