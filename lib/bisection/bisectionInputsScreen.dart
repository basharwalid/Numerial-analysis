import 'package:flutter/material.dart';
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
                  "Bisection Method",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              bisectioninputWidget("XL"),
              bisectioninputWidget("XU"),
              bisectioninputWidget("Error"),
              bisectioninputWidget("Iter"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, equationInputScreen.routeName);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff052E40))),
                  child: const Text("Next"),
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
