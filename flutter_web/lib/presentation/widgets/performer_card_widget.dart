import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/widgets/description_card_widget.dart';
import 'package:flutter_web/presentation/widgets/information_widget.dart';
import 'package:flutter_web/presentation/widgets/photo_card_widget.dart';

class PerformerCardWidget extends StatelessWidget {
  const PerformerCardWidget({super.key});

  //Getting asset from server
  static const titleSize = 50.0;
  static const imagePath = 'assets/images/woman.webp';
  static const paddingSize = EdgeInsets.fromLTRB(0.0, 0.0, 600.0, 0.0);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Padding(
          padding: paddingSize,
          child: Text(
            'Контакты',
            style: TextStyle(fontSize: titleSize),
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PhotoCardWidget(photo: imagePath),
            DescriptionCardWidget(
              infoBlock: Column(
                children: [
                  Spacer(),
                  InformationWidget(
                    title: 'ПРОДЮСЕР',
                    description: 'ТАТЬЯНА ВЕЛЕС',
                    contact: '+7385827482',
                  ),
                  InformationWidget(
                    title: 'КОНЦЕРТНЫЙ ДИРЕКТОР',
                    description: 'ПИРОЖЕНКО СТАСИК',
                    contact: '+7424240104',
                  ),
                  InformationWidget(
                    title: 'PR-MANAGER',
                    description: 'БАРСУКОВА АСЯ',
                    contact: '+72329482199',
                  ),
                  InformationWidget(
                    title: 'ПРОДЮССЕРСКИЙ ЦЕНТР',
                    contact: 'URA-PR.COM',
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
        Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
