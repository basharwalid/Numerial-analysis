import 'package:flutter/material.dart';

import 'equationInputWidget.dart';

  class equationInputScreen extends StatelessWidget {
    static const String routeName="equation input screen";
  @override
  Widget build(BuildContext context) {
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
                 Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
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
                      // Navigator.pushNamed(context, equationInputScreen.routeName);
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
