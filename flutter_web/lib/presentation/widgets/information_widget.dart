import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/widgets/tokens/spacing.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({
    super.key,
    this.contact,
    this.description,
    required this.title,
  });

  final String title;
  final String? contact;
  final String? description;

  static const spacerSize = Spacing.sixteenPX;
  static const titleFontSize = Spacing.twentyPX;
  static const defaultFontSize = Spacing.sixteenPX;
  static const spacer = SizedBox(height: spacerSize);

  static const titleStyle = TextStyle(
    fontSize: titleFontSize,
    fontWeight: FontWeight.bold,
  );
  static const descriptionStyle = TextStyle(
    fontSize: defaultFontSize,
    fontWeight: FontWeight.normal,
  );
  static const contactStyle = TextStyle(
    fontSize: defaultFontSize,
    fontWeight: FontWeight.normal,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: titleStyle),
        if (description != null) Text(description!, style: descriptionStyle),
        if (contact != null) Text(contact!, style: contactStyle),
        spacer,
      ],
    );
  }
}
