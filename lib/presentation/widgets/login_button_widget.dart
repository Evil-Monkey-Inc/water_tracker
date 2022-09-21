import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({Key? key, required this.onPressed})
      : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        padding: const EdgeInsets.all(12.0),
        primary: const Color(0xFF292D32),
        shape: RoundedRectangleBorder(
          //todo set accurate radius
          borderRadius: BorderRadius.circular(80),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child: Text(
          'Sing in',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
