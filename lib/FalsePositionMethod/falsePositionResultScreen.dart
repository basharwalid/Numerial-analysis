import 'package:flutter/material.dart';
import 'package:numerical/FalsePositionMethod/FalsePositionMethod.dart';

class falsePositionResultScreen extends StatelessWidget {
  static const String routeName = "false position method result screen";
  @override
  Widget build(BuildContext context) {
    FalsePosition data = ModalRoute.of(context)!.settings.arguments as FalsePosition;
    return Scaffold(
      backgroundColor: const Color(0xff1B0820),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const  Text("False Postion Method"),
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
                  Expanded(
                      child: Text("iteration", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
                  Expanded(child: Text("XL", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
                  Expanded(child: Text("f(xl)", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
                  Expanded(child: Text("XU", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
                  Expanded(child: Text("f(xu)", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
                  Expanded(child: Text("xr", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
                  Expanded(child: Text("f(xr)", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
                  Expanded(child: Text("Error", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
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
                            child: Text(
                          data.iterations[index].toString(),
                          textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),
                        )),
                        Expanded(
                            child: Text(data.xl[index].toStringAsFixed(3),
                                textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)),
                        Expanded(
                            child: Text(
                                data
                                    .calcFunction(data.xl[index])
                                    .toStringAsFixed(3),
                                textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)),
                        Expanded(
                            child: Text(data.xu[index].toStringAsFixed(3),
                                textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)),
                        Expanded(
                            child: Text(
                                data
                                    .calcFunction(data.xu[index])
                                    .toStringAsFixed(3),
                                textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)),
                        Expanded(
                            child: Text(data.xr[index].toStringAsFixed(3),
                                textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),)),
                        Expanded(
                            child: Text(
                                data
                                    .calcFunction(data.xr[index])
                                    .toStringAsFixed(3),
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
                "The required root = ${data.xr.last.toStringAsFixed(3)}",
                textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
