import 'package:flutter/material.dart';
import 'package:numerical/SimpleFixedPoint/SimpleFixedPointModel.dart';
import 'package:numerical/SimpleFixedPoint/simpleFixedPointResultScreen.dart';
import 'package:numerical/SimpleFixedPoint/simpleFixedPointWidget.dart';

class simpleFixedPointScreen extends StatelessWidget {
  static const String routeName = "Simple Fixed Point screen";
  TextEditingController XiController = TextEditingController();
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
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Simple Fixed Point",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              simpleFixedPointWidget("Xo", XiController),
              simpleFixedPointWidget("Error", ErrorController),
              simpleFixedPointWidget("Equation", EquationController),
              simpleFixedPointWidget("Iteration", IterationController),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    SampleFixedPoint simplefixedpoint = SampleFixedPoint(
                        xI: double.parse(XiController.text),
                        errorStopPoint: double.parse(ErrorController.text),
                        equation: EquationController.text,
                        iterationLimit: int.parse(IterationController.text));
                    simplefixedpoint.calcSampleFixedPoint();
                    Navigator.pushNamed(
                        context, simpleFixedPointResultScreen.routeName,
                        arguments: simplefixedpoint);
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
//-0.9*x^2+1.7*x+2.5
