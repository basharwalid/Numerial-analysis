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
      appBar: AppBar(
        backgroundColor: Color(0xff1B0820),
        elevation: 0,
      ),
      // resizeToAvoidBottomInset: false,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xff1B0820),
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
                    Secant secant = Secant(xOfI: double.parse(XiController.text), xOfIMin1: double.parse(XiMin1Controller.text),equation: EquationController.text, errorStopPoint: double.parse(ErrorController.text) ,iterationLimit: int.parse( IterationController.text));
                    secant.calcSecant();
                    Navigator.pushNamed(context,secantMethodResultScreen.routeName , arguments: secant);
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),),
                      padding: MaterialStateProperty.all(EdgeInsets.only(left:100 , right: 100 , top: 20 , bottom: 20)),
                      backgroundColor:
                      MaterialStateProperty.all(const Color(0xff5F7A3C))),
                  child: const Text(
                    "Calculate",
                    style: TextStyle(color: Colors.black,
                        fontSize: 25
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
