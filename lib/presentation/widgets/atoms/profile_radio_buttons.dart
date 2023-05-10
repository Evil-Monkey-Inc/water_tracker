import 'package:flutter/material.dart';
import 'package:water_tracker/data/models/language.dart';

class ProfileRadioButtons extends StatefulWidget {
  const ProfileRadioButtons({
    super.key,
    required this.onChanged,
    required this.firstButtonName,
    required this.thirdButtonName,
    required this.secondButtonName,
    required this.data,
  });

  final Object data;
  final String thirdButtonName;
  final String firstButtonName;
  final String secondButtonName;
  final void Function(dynamic) onChanged;

  @override
  State<ProfileRadioButtons> createState() => _ProfileRadioButtonsState();
}

class _ProfileRadioButtonsState extends State<ProfileRadioButtons> with TickerProviderStateMixin {
  late final TabController controller;
  static const countTabs = 3;
  static String _selectedLanguage = Language.english.toString();

  @override
  void initState() {
    controller = TabController(length: countTabs, vsync: this);
    controller.addListener(() {
      if (widget.data == Language.english || widget.data == Language.spanish || widget.data == Language.ukrainian) {
        return widget.onChanged(Language.values[controller.index]);
      }
    }); // controller.index
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          activeColor: Theme.of(context).disabledColor,
          title: Text(widget.firstButtonName),
          value: Language.english,
          groupValue: _selectedLanguage,
          onChanged: (value) => setState(() => _selectedLanguage = value.toString()),
        ),
        RadioListTile(
          activeColor: Theme.of(context).disabledColor,
          title: Text(widget.secondButtonName),
          value: Language.spanish,
          groupValue: _selectedLanguage,
          onChanged: (value) => setState(() => _selectedLanguage = value.toString()),
        ),
        RadioListTile(
          activeColor: Theme.of(context).disabledColor,
          title: Text(widget.thirdButtonName),
          value: Language.ukrainian,
          groupValue: _selectedLanguage,
          onChanged: (value) => setState(() => _selectedLanguage = value.toString()),
        ),
      ],
    );
  }
}
