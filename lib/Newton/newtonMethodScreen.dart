import 'package:flutter/material.dart';
import 'package:numerical/Newton/NewtonModel.dart';
import 'package:numerical/Newton/NewtonResultScreen.dart';
import 'package:numerical/Newton/newtonMethodWidget.dart';

class newtonMethodScreen extends StatelessWidget {
  static const String routeName="newton method screen";

  TextEditingController XoController = TextEditingController();

  TextEditingController ErrorController = TextEditingController();

  TextEditingController EquaitionController = TextEditingController();
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
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Newton Method",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              newtonMethodWidget("Xo" , XoController),
              newtonMethodWidget("error" , ErrorController),
              newtonMethodWidget("Equation" ,EquaitionController),
              newtonMethodWidget("iter" ,IterationController),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Newton newton = Newton(xI: double.parse(XoController.text), equation: EquaitionController.text,errorStopPoint: double.parse(ErrorController.text));
                    newton.calcNewton();
                    Navigator.pushNamed(context, NewtonResultScreeen.routeName , arguments: newton);
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
