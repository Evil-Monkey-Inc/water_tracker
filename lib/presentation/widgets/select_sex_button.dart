import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class SelectSexButton extends StatefulWidget {
  const SelectSexButton({Key? key}) : super(key: key);

  @override
  State<SelectSexButton> createState() => _SelectSexButtonState();
}

class _SelectSexButtonState extends State<SelectSexButton> with SingleTickerProviderStateMixin {
  var indicatorWeight = 2.0;
  static const countTabs = 2;
  static const heightButton = 80.0;
  static const space = SizedBox(height: 20);
  static const spaceInsideButton = EdgeInsets.all(8);
  static const sexTextProperty = Text('Sex:', style: TextStyle(fontSize: 20));
  static const tabMaleTextProperty = Text('Male', style: TextStyle(fontSize: 20));
  static const tabFemaleTextProperty = Text('Female', style: TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(alignment: Alignment.bottomLeft, child: sexTextProperty),
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
                  height: 62,
                  child: DefaultTabController(
                    length: countTabs,
                    child: TabBar(
                      unselectedLabelColor: CustomTheme.mainColor,
                      labelColor: CustomTheme.sexLabelColor,
                      indicatorColor: CustomTheme.mainColor,
                      indicatorWeight: indicatorWeight,
                      indicator: BoxDecoration(color: CustomTheme.mainColor, borderRadius: BorderRadius.circular(40)),
                      tabs: const [
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
