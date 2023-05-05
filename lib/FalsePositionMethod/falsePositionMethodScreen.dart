import 'package:flutter/material.dart';
import 'package:numerical/FalsePositionMethod/FalsePositionMethod.dart';
import 'package:numerical/FalsePositionMethod/falsePositionMethodWidget.dart';
import 'package:numerical/FalsePositionMethod/falsePositionResultScreen.dart';
class falsePositionMethodScreen extends StatelessWidget {
  static const String routeName="false position method screen";
  TextEditingController XLController = TextEditingController();
  TextEditingController XUtaController = TextEditingController();
  TextEditingController ErrorController = TextEditingController();
  TextEditingController IterController = TextEditingController();
  TextEditingController EquationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1B0820),
        elevation: 0,
      ),
      //resizeToAvoidBottomInset: false,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xff1B0820),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "false Position Method",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              falsePositionMethodWidget("XL",XLController),
              falsePositionMethodWidget("XU",XUtaController),
              falsePositionMethodWidget("Error", ErrorController),
              falsePositionMethodWidget("Iter",IterController),
              falsePositionMethodWidget("Equation",EquationController),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    FalsePosition falsePosition = FalsePosition(xlI: double.parse(XLController.text), xuI: double.parse(XUtaController.text),equation: EquationController.text ,errorStopPoint: double.parse(ErrorController.text));
                    falsePosition.calcFalsePosition();
                    Navigator.pushNamed(context, falsePositionResultScreen.routeName , arguments: falsePosition);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(const Color(0xff5F7A3C))),
                  child: const Text("Calculate"),
                ),
              )
            ],
          )),
    );
  }
}
// -13-20*x+19*x^2-3*x^2