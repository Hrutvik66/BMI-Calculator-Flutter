import 'package:bmi_calci/components/bottom_button.dart';
import 'package:bmi_calci/components/boxes_.dart';
import 'package:bmi_calci/components/constants_.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmi,
      required this.result,
      required this.appreciation});

  final String bmi;
  final String result;
  final String appreciation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
        ),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  "Your Result",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Boxes(
                color: inactiveColor,
                childOfBox: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result,
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 22.0,
                      ),
                    ),
                    Text(
                      bmi,
                      style: const TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      appreciation,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: "RE-CALCULATE",
            ),
          ]),
    );
  }
}
