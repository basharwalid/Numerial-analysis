import 'package:flutter/material.dart';

import 'SecantMethodModel.dart';

class secantMethodResultScreen extends StatelessWidget {
  static const String routeName="secant method result screen";
  @override
  Widget build(BuildContext context) {
    Secant data = ModalRoute.of(context)!.settings.arguments as Secant;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Secant"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 2,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Expanded(child: Text("iteration", textAlign: TextAlign.center)),
                    Expanded(child: Text("Xi-1", textAlign: TextAlign.center)),
                    Expanded(child: Text("f(xi-1)", textAlign: TextAlign.center)),
                    Expanded(child: Text("Xi", textAlign: TextAlign.center)),
                    Expanded(child: Text("f(Xi)", textAlign: TextAlign.center)),
                    Expanded(child: Text("Error", textAlign: TextAlign.center)),

                  ],
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.red,
                    ),
                    itemCount: data.iterations.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(data.iterations[index].toString(),
                                textAlign: TextAlign.center,
                              )),
                          Expanded(
                              child: Text(data.xPrev[index].toStringAsFixed(3),
                                  textAlign: TextAlign.center)),
                          Expanded(
                              child: Text(data.calcFunction(data.xPrev[index]).toStringAsFixed(3),
                                  textAlign: TextAlign.center)),
                          Expanded(
                              child: Text(data.xI[index].toStringAsFixed(3),
                                  textAlign: TextAlign.center)),
                          Expanded(
                              child: Text(data.calcFunction(data.xI[index]).toStringAsFixed(3),
                                  textAlign: TextAlign.center)),
                          Expanded(
                              child: Text(data.error[index].toStringAsFixed(3),
                                  textAlign: TextAlign.center)),

                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Text(
                      "The required root = ${data.xI.last.toStringAsFixed(3)}",
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
