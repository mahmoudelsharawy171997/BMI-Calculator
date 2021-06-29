import 'package:flutter/material.dart';
import 'package:bmi_calculator/componants/reusable_card.dart';
import '../conestants.dart';
import '../componants/bottom_button.dart';

class ResultsPage extends StatelessWidget {

  const ResultsPage({ this.bmiResult,  this.resultText,  this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                  child: Text(
              'Your Result',
              style: KTitleTextStyle,
            ),
                )),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: KActiveCardColor,
                childCard: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(resultText.toUpperCase(),style: KResultTextStyle,),
                    Text(bmiResult,style: KBMITextStyle,),
                    Text(interpretation,style: KBodyTextStyle,textAlign: TextAlign.center,),
                    
                  ],
                ),
              ),
            ),
            BottomButton(onPress: (){
              Navigator.pushNamed(context, 'home');
            },buttonTitle: 'RE-CALCULATE',),
          ],
        ));
  }
}
