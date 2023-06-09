import 'package:flutter/material.dart';
import 'package:numerical/bisection/Bisection.dart';
import 'package:numerical/bisection/bisectionInputWidget.dart';
import 'package:numerical/bisection/resultScreen.dart';

class bisectionInputScreen extends StatelessWidget {
  static const String routeName = "bisection inputs Screen";
  TextEditingController XLController = TextEditingController();
  TextEditingController XUtaController = TextEditingController();
  TextEditingController ErrorController = TextEditingController();
  TextEditingController IterController = TextEditingController();
  TextEditingController EquationController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    String title = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1B0820),
        elevation: 0,
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xff1B0820),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Bisection Method",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              bisectioninputWidget("XL" , XLController),
              bisectioninputWidget("XU",XUtaController),
              bisectioninputWidget("Error",ErrorController),
              bisectioninputWidget("Iter",IterController),
              bisectioninputWidget("Equation",EquationController),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                      Bisection bisection = Bisection(xli: double.parse(XLController.text), xui: double.parse(XUtaController.text), equation: EquationController.text,errorStop: double.parse(ErrorController.text),numberOfIteration: int.parse(IterController.text));
                      bisection.calculateBisection();
                      Navigator.pushNamed(context, resultScreen.routeName , arguments: bisection);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                    ),
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
              ),
            ],
          )),
    );
  }
}
