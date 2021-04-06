import 'package:flutter/material.dart';
import '../conestants.dart';


class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle,@required this.onPress});
  final String buttonTitle;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(child: Text(buttonTitle,style: KLargeButtonTextStyle)),
        color: KBottomContainerColor,
        height: 50,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
      ),
    );
  }
}