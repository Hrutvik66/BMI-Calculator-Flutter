import 'package:bmi_calci/components/bmi_calculation.dart';
import 'package:bmi_calci/components/bottom_button.dart';
import 'package:bmi_calci/components/box_content.dart';
import 'package:bmi_calci/components/boxes_.dart';
import 'package:bmi_calci/components/constants_.dart';
import 'package:bmi_calci/result_page.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;

  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == inactiveColor) {
        maleCardColor = activeColor;
        femaleCardColor = inactiveColor;
      } else {
        maleCardColor = inactiveColor;
      }
    }

    if (gender == Gender.female) {
      if (femaleCardColor == inactiveColor) {
        femaleCardColor = activeColor;
        maleCardColor = inactiveColor;
      } else {
        femaleCardColor = inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI Calculator"),
          backgroundColor: const Color(0xFF0A0E21),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: Boxes(
                      color: maleCardColor,
                      childOfBox:
                          const BoxContent(icon: Icons.male, text: "Male"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: Boxes(
                      color: femaleCardColor,
                      childOfBox:
                          const BoxContent(icon: Icons.female, text: "Female"),
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Boxes(
                color: inactiveColor,
                childOfBox: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: const TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.w900),
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF8D8E98)),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: const Color(0xFFEB1555),
                        inactiveTrackColor: const Color(0x30EB1555),
                        thumbColor: const Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 10.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 20.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (value) => {
                          setState(() {
                            height = value.round();
                          })
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(children: [
                Expanded(
                  child: Boxes(
                    color: inactiveColor,
                    childOfBox: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: const TextStyle(
                                  fontSize: 50.0, fontWeight: FontWeight.w900),
                            ),
                            const Text(
                              "kg",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF8D8E98)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              elevation: 10.0,
                              constraints: const BoxConstraints.tightFor(
                                width: 50.0,
                                height: 50.0,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xFF4C4F5E),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              elevation: 10.0,
                              constraints: const BoxConstraints.tightFor(
                                width: 50.0,
                                height: 50.0,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xFF4C4F5E),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Boxes(
                    color: inactiveColor,
                    childOfBox: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          age.toString(),
                          style: const TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              elevation: 10.0,
                              constraints: const BoxConstraints.tightFor(
                                width: 50.0,
                                height: 50.0,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xFF4C4F5E),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              elevation: 10.0,
                              constraints: const BoxConstraints.tightFor(
                                width: 50.0,
                                height: 50.0,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xFF4C4F5E),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            BottomButton(
              onTap: () {
                BMICalculator calc =
                    BMICalculator(height: height, weight: weight);
                String bmi = calc.calculateBMI();
                String result = calc.getResult();
                String appreciation = calc.appreciation();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                        bmi: bmi, result: result, appreciation: appreciation),
                  ),
                );
              },
              buttonTitle: "CALCULATE",
            )
          ],
        ));
  }
}
