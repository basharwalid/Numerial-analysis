import 'package:flutter/material.dart';
import 'package:numerical/FalsePositionMethod/falsePositionMethodScreen.dart';
import 'package:numerical/HomeScreen/chooseMethodScreen.dart';
import 'package:numerical/Newton/newtonMethodScreen.dart';
import 'package:numerical/Secant/secantMethodScreen.dart';
import 'package:numerical/SimpleFixedPoint/simplefixedPointScreen.dart';
import 'package:numerical/bisection/bisectionInputsScreen.dart';
import 'package:numerical/bisection/equationInputScreen.dart';
import 'package:numerical/bisection/resultScreen.dart';
import 'package:numerical/theme/myTheme.dart';

void main() {
  runApp(Myapplication());
}

class Myapplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: chooseMethodScreen.routeName,
      routes: {
          chooseMethodScreen.routeName: (_) => chooseMethodScreen(),
          bisectionInputScreen.routeName: (_) => bisectionInputScreen(),
          equationInputScreen.routeName: (_) => equationInputScreen(),
          falsePositionMethodScreen.routeName: (_) => falsePositionMethodScreen(),
          resultScreen.routeName: (_) => resultScreen(),
          newtonMethodScreen.routeName: (_) => newtonMethodScreen(),
          simpleFixedPointScreen.routeName: (_) => simpleFixedPointScreen(),
          secantMethodScreen.routeName: (_) => secantMethodScreen(),
      },
      theme: ThemeData(),
    );
  }
}
