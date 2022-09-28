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
        minimumSize: const Size.fromHeight(12),
        padding: const EdgeInsets.all(8.0),
        primary: const Color(0xFF292D32),
        shape: RoundedRectangleBorder(
          //todo set accurate radius
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          'Sing In',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
