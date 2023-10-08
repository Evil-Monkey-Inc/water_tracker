import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/widgets/custom_app_bar.dart';
import 'package:flutter_web/presentation/widgets/performer_card_widget.dart';

void main() {
  runApp(const AppEntry());
}

class AppEntry extends StatelessWidget {
  const AppEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(),
        body: PerformerCardWidget(),
      ),
    );
  }
}
