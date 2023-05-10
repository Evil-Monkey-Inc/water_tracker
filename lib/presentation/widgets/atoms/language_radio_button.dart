import 'package:flutter/material.dart';

class LanguageRadioButton extends StatefulWidget {
  const LanguageRadioButton({
    super.key,
    required this.onChanged,
    required this.firstButtonName,
    required this.thirdButtonName,
    required this.secondButtonName,
  });

  final String thirdButtonName;
  final String firstButtonName;
  final String secondButtonName;
  final void Function(dynamic) onChanged;

  @override
  State<LanguageRadioButton> createState() => _LanguageRadioButtonState();
}

class _LanguageRadioButtonState extends State<LanguageRadioButton> {
  static String _selectedLanguage = 'English';
  static const activeColor = Color(0xFF673AB7);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          activeColor: activeColor,
          title: Text(widget.firstButtonName),
          value: 'English',
          groupValue: _selectedLanguage,
          onChanged: (value) => setState(() => _selectedLanguage = value.toString()),
        ),
        RadioListTile(
          activeColor: activeColor,
          title: Text(widget.secondButtonName),
          value: 'Spanish',
          groupValue: _selectedLanguage,
          onChanged: (value) => setState(() => _selectedLanguage = value.toString()),
        ),
        RadioListTile(
          activeColor: activeColor,
          title: Text(widget.thirdButtonName),
          value: 'Ukrainian',
          groupValue: _selectedLanguage,
          onChanged: (value) => setState(() => _selectedLanguage = value.toString()),
        ),
      ],
    );
  }
}
