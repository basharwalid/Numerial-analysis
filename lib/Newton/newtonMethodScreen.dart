import 'package:flutter/material.dart';
import 'package:numerical/Newton/NewtonModel.dart';
import 'package:numerical/Newton/NewtonResultScreen.dart';
import 'package:numerical/Newton/newtonMethodWidget.dart';

class newtonMethodScreen extends StatelessWidget {
  static const String routeName="newton method screen";
  TextEditingController XoController = TextEditingController();
  TextEditingController ErrorController = TextEditingController();
  TextEditingController EquaitionController = TextEditingController();
  TextEditingController EquaitionderivedController = TextEditingController();
  TextEditingController IterationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1B0820),
        elevation: 0,
      ),
      // resizeToAvoidBottomInset: false,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xff1B0820),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Newton Method",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              newtonMethodWidget("Xo" , XoController),
              newtonMethodWidget("error" , ErrorController),
              newtonMethodWidget("Equation" ,EquaitionController),
              newtonMethodWidget("iter" ,IterationController),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Newton newton = Newton(xI: double.parse(XoController.text),errorStopPoint: double.parse(ErrorController.text),equation: EquaitionController.text , iterationLimit: int.parse( IterationController.text));
                    newton.calcNewton();
                    Navigator.pushNamed(context, NewtonResultScreeen.routeName , arguments: newton);
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),),
                      padding: MaterialStateProperty.all(EdgeInsets.only(left:100 , right: 100 , top: 20 , bottom: 20)),
                      backgroundColor:
                      MaterialStateProperty.all(const Color(0xff5F7A3C))),
                  child: const Text(
                    "Calculate",
                    style: TextStyle(color: Colors.black,
                        fontSize: 25
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
