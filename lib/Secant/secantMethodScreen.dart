import 'package:flutter/material.dart';
import 'package:numerical/Secant/SecantMethodResultScreen.dart';
import 'package:numerical/Secant/secantMethodWidget.dart';

import 'SecantMethodModel.dart';

class secantMethodScreen extends StatelessWidget {
  static const String routeName="Secant Method Screen";
  TextEditingController XiController = TextEditingController();
  TextEditingController XiMin1Controller = TextEditingController();
  TextEditingController ErrorController = TextEditingController();
  TextEditingController EquationController = TextEditingController();
  TextEditingController IterationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xff350E0E),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment:CrossAxisAlignment.center,
            children: [
               Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              secantMethodWidget('Xi' , XiController),
              secantMethodWidget('X-1',XiMin1Controller),
              secantMethodWidget('Error' ,ErrorController),
              secantMethodWidget('Equation', EquationController),
              secantMethodWidget('Iter', IterationController),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Secant secant = Secant(xOfI: double.parse(XiController.text), xOfIMin1: double.parse(XiMin1Controller.text),equation: EquationController.text, errorStopPoint: double.parse(ErrorController.text) );
                    secant.calcSecant();
                    Navigator.pushNamed(context,secantMethodResultScreen.routeName , arguments: secant);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(const Color(0xff052E40))),
                  child: const Text("Calculate"),
                ),
              )
            ],
          )),
    );
  }
}
