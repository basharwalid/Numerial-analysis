import 'package:flutter/material.dart';
import 'package:numerical/bisection/bisectionInputWidget.dart';
class bisectionInputScreen extends StatelessWidget {
  static const String routeName = "bisection inputs Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff350E0E),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bisectioninputWidget("XL"),
            bisectioninputWidget("XU"),
            bisectioninputWidget("Error"),
            bisectioninputWidget("Iter"),
          ],
        )
      ),
    );
  }
}