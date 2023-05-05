import 'package:flutter/material.dart';

class chooseButtonWidget extends StatelessWidget {
String name;
Function onbuttonPress;
chooseButtonWidget(this.name ,this.onbuttonPress);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          onbuttonPress(name);
        },
        style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all(const Color(0xff5F7A3C))),
        child:Text( name,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
