import 'package:flutter/material.dart';
import 'package:numerical/bisection/Bisection.dart';
import 'package:numerical/bisection/bisectionInputWidget.dart';
import 'package:numerical/bisection/equationInputScreen.dart';

class bisectionInputScreen extends StatefulWidget {
  static const String routeName = "bisection inputs Screen";
  @override
  State<bisectionInputScreen> createState() => _bisectionInputScreenState();
}

class _bisectionInputScreenState extends State<bisectionInputScreen> {
  @override
  Widget build(BuildContext context) {
    // resizeToAvoidBottomInset: false;
    TextEditingController XLController = TextEditingController();
    TextEditingController XUtaController = TextEditingController();
    TextEditingController ErrorController = TextEditingController();
    TextEditingController IterController = TextEditingController();
    TextEditingController EquationController = TextEditingController();
    String title = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
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
                      Bisection(double.parse(XLController.text),double.parse(XUtaController.text),EquationController.text,errorStop: double.parse(ErrorController.text));
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
  // NavigateToEquation(String name){
  //   Navigator.pushNamed(context, equationInputScreen.routeName , arguments: name);
  // }
}
