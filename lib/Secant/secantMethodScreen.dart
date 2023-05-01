import 'package:flutter/material.dart';
import 'package:numerical/Secant/secantMethodWidget.dart';

class secantMethodScreen extends StatelessWidget {
  static const String routeName="Secant Method Screen";
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
                  "Secant Method",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              secantMethodWidget('Xo'),
              secantMethodWidget('X-1'),
              secantMethodWidget('Error'),
              secantMethodWidget('Iter'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, equationInputScreen.routeName , arguments: title);
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
