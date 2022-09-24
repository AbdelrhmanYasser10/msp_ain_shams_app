import'package:flutter/material.dart';
import 'package:msp_app_version2/shared/widgets/vertical_divider.dart';

class Slogan extends StatelessWidget {
  const Slogan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage("assets/images/MSP LOGO bright.png"),
          backgroundColor: Colors.transparent,
        ),
        verticalDivider(),
        Text(
          'Knowledge Shared is Knowledge²',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        verticalDivider(),
        Text(
          "MSP Tech Club - ASU",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        verticalDivider(),

      ],
    );
  }
}
