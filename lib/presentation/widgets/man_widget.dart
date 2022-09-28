import 'package:flutter/material.dart';

class ManWidget extends StatelessWidget {
  const ManWidget({Key? key}) : super(key: key);

  static const manImagePath = "assets/images/man_login.png";
  static const manHeight = 241.0;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      manImagePath,
      height: manHeight,
      fit: BoxFit.fitHeight,
    );
  }
}
