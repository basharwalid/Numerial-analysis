import 'package:flutter/material.dart';
import 'package:numerical/Newton/NewtonModel.dart';
class NewtonResultScreeen extends StatelessWidget {
  static const String routeName="Newton Result Screen";
  @override
  Widget build(BuildContext context) {
    Newton data = ModalRoute.of(context)?.settings.arguments as Newton;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Newton"),
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
                    Expanded(child: Text("Xi", textAlign: TextAlign.center)),
                    Expanded(child: Text("f(xi)", textAlign: TextAlign.center)),
                    Expanded(child: Text("f‘(xi)", textAlign: TextAlign.center)),
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
                              child: Text(data.x[index].toStringAsFixed(3),
                                  textAlign: TextAlign.center)),
                          Expanded(
                              child: Text(data.calcFunction(data.x[index]).toStringAsFixed(3),
                                  textAlign: TextAlign.center)),
                          Expanded(
                              child: Text(data.calcFunctionWithDerivative(data.x[index]).toStringAsFixed(3),
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
                      "The required root = ${data.x.last.toStringAsFixed(3)}",
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
