import 'package:flutter/material.dart';

import 'SimpleFixedPointModel.dart';

class simpleFixedPointResultScreen extends StatelessWidget {
  static const String routeName="Simple Fixed Point Result Screen";
  @override
  Widget build(BuildContext context) {
    SampleFixedPoint data = ModalRoute.of(context)!.settings.arguments as SampleFixedPoint;
    return Scaffold(
      backgroundColor: const Color(0xff1B0820),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Simple Fixed Point"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 2,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Expanded(child: Text("iteration", textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)),
                  Expanded(child: Text("Xi", textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)),
                  Expanded(child: Text("f(xi)", textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)),
                  Expanded(child: Text("Error", textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)),

                ],
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Container(
                    width: double.infinity,
                    height: 1,
                    color: const Color(0xff5F7A3C),
                  ),
                  itemCount: data.iterations.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(data.iterations[index].toString(),
                              textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),
                            )),
                        Expanded(
                            child: Text(data.x[index].toStringAsFixed(3),
                                textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)),
                        Expanded(
                            child: Text(data.calcFunction(data.fx[index]).toStringAsFixed(3),
                                textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)),
                        Expanded(
                            child: Text(data.error[index].toStringAsFixed(3),
                                textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)),

                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Text(
                    "The required root = ${data.x.last.toStringAsFixed(3)}",
                    textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
