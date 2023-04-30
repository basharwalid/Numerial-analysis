import 'package:flutter/material.dart';

import 'equationInputWidget.dart';

  class equationInputScreen extends StatelessWidget {

    static const String routeName="equation input screen";
  @override
  Widget build(BuildContext context) {
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
                equationInputWidget(),
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
}
