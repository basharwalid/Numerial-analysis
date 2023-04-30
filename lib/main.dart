import 'package:flutter/material.dart';
import 'package:numerical/HomeScreen/chooseMethodScreen.dart';
import 'package:numerical/bisection/bisectionInputsScreen.dart';
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
      },
      theme: ThemeData(

      ),
    );
  }
}
