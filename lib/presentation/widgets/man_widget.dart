import 'package:flutter/material.dart';

class ManWidget extends StatelessWidget {
  const ManWidget({Key? key}) : super(key: key);

  static const manImagePath = "assets/images/Man1.png";
  static const manHeight = 500.0;
  static const manWidth = 236.0;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      manImagePath,
      height: manHeight,
      width: manWidth,
    );
  }
}
