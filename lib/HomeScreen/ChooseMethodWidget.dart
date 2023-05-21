import 'package:flutter/material.dart';
import 'package:numerical/FalsePositionMethod/falsePositionMethodScreen.dart';
import 'package:numerical/HomeScreen/chooseButtonWidget.dart';
import 'package:numerical/Matrix/MatrixModel.dart';
import 'package:numerical/Matrix/MatrixView.dart';
import 'package:numerical/Newton/newtonMethodScreen.dart';
import 'package:numerical/Secant/secantMethodScreen.dart';
import 'package:numerical/Secant/secantMethodWidget.dart';
import 'package:numerical/SimpleFixedPoint/simplefixedPointScreen.dart';
import 'package:numerical/bisection/bisectionInputsScreen.dart';

class ChooseMethodWidget extends StatefulWidget {
  @override
  State<ChooseMethodWidget> createState() => _ChooseMethodWidgetState();
}

class _ChooseMethodWidgetState extends State<ChooseMethodWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("What Method Would YouLike To Perform",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Find the root methods" ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                    chooseButtonWidget("bisection", navigateToBisection),
                    chooseButtonWidget("False Position Method",navigateToFalsePositionMethod),
                    chooseButtonWidget("Secant",navigateToSecant),
                    chooseButtonWidget("Newton",navigateToNewtonMethod),
                    chooseButtonWidget("Simple Fixed point",navigateToSimpleFixedPoint),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Linear Algebraic Equations",textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                      chooseButtonWidget("Matrices",navigateToGaussElimination)
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
  navigateToFalsePositionMethod(String title){
    Navigator.pushNamed(context, falsePositionMethodScreen.routeName, arguments: title);
  }
  navigateToNewtonMethod(String title){
    Navigator.pushNamed(context, newtonMethodScreen.routeName, arguments: title);
  }
  navigateToSimpleFixedPoint(String title){
    Navigator.pushNamed(context, simpleFixedPointScreen.routeName, arguments: title);
  }
  navigateToSecant(String title){
    Navigator.pushNamed(context, secantMethodScreen.routeName, arguments: title);
  }
  navigateToGaussElimination(String title){
    Navigator.pushNamed(context, MatrixScreen.routeName, arguments: title);
  }
}
