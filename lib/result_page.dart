import 'package:flutter/material.dart';
import 'constants.dart';
import 'ReusableCard.dart';
import 'calculater_brain.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(15.0),
              child: const Text('Your Result', style: kResultTextStyle),
            ),
          ),

          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Text(resultText.toUpperCase(), style: kBMInTextStyle),
                  Text(bmiResult, style: kBMITextStyle),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kResultTextStyle,
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              height: 80.0,
              margin: const EdgeInsets.only(top: 10.0),
              color: bottomBarColor,
              width: double.infinity,
              child: const Text('RE-CALCULATE', style: kBottomTextStyle),
            ),
          ),
        ],
      ),
    );
  }
}
