import 'package:flutter/material.dart';
import '../conestants.dart';

class IconContent extends StatelessWidget {
  const IconContent({this.lable, this.iconCard});
  final String lable;
  final IconData iconCard;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconCard,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          lable,
          style: KLableTextStyle,
        )
      ],
    );
  }
}

