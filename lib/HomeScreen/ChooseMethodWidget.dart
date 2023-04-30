import 'package:flutter/material.dart';
import 'package:numerical/HomeScreen/chooseButtonWidget.dart';
import 'package:numerical/bisection/bisectionInputsScreen.dart';

class ChooseMethodWidget extends StatefulWidget {
  @override
  State<ChooseMethodWidget> createState() => _ChooseMethodWidgetState();
}

class _ChooseMethodWidgetState extends State<ChooseMethodWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("What Method Would YouLike To Perform"),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Find the root methods" , textAlign: TextAlign.center,),
                    ),
                    chooseButtonWidget("bisection", navigateToBisection),
                    chooseButtonWidget("False Position Method",navigateToBisection),
                    chooseButtonWidget("Secant",navigateToBisection),
                    chooseButtonWidget("Newton",navigateToBisection),
                    chooseButtonWidget("Simple Fixed point",navigateToBisection),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Gauss-jordan methods",textAlign: TextAlign.center,),
                    ),
                      chooseButtonWidget("Gauss-Elimination",navigateToBisection),
                      chooseButtonWidget("Gauss-jordan",navigateToBisection),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

   navigateToBisection(String title){
    Navigator.pushNamed(context, bisectionInputScreen.routeName , arguments: title);
  }
}
