import 'package:flutter/material.dart';
import 'package:numerical/HomeScreen/ChooseMethodWidget.dart';

class chooseMethodScreen extends StatelessWidget {
  static const String routeName='Choose method screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xff1B0820),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ChooseMethodWidget(),
            ],
          ),
        ),
    );
  }
}
