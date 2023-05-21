import 'package:flutter/material.dart';

class chooseButtonWidget extends StatelessWidget {
String name;
Function onbuttonPress;
chooseButtonWidget(this.name ,this.onbuttonPress);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // margin: EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {
            onbuttonPress(name);
          },
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              backgroundColor:
              MaterialStateProperty.all(const Color(0xff5F7A3C))),
          child:Text( name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20
            ),
          ),
        ),
      ),
    );
  }
}
