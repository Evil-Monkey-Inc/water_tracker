import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/widgets/tokens/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: DefaultColors.defaultWhite,
      leading: IconButton(
        icon: const Icon(
          Icons.more_horiz,
          color: DefaultColors.defaultDark,
        ),
        onPressed: () {},
      ),
      title: const Text(
        'MIRANDA',
        style: TextStyle(
          color: DefaultColors.defaultDark,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {},
          child: const Text(
            'ГЛАВНАЯ',
            style: TextStyle(
                color: DefaultColors.defaultDark,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'МУЗЫКА',
            style: TextStyle(
                color: DefaultColors.defaultDark,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'ГАЛЕРЕЯ',
            style: TextStyle(
                color: DefaultColors.defaultDark,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'ОБО МНЕ',
            style: TextStyle(
                color: DefaultColors.defaultDark,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'КОНТАКТЫ',
            style: TextStyle(
                color: DefaultColors.defaultDark,
                fontWeight: FontWeight.normal),
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.search,
            color: DefaultColors.defaultDark,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
