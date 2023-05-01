import 'package:flutter/material.dart';

class bisectioninputWidget extends StatelessWidget {
  String text;
  TextEditingController dataController;
  bisectioninputWidget(this.text , this.dataController);
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Container(
          padding: const EdgeInsets.only(left: 5),
          width: 60,
          child: Text(text ,
          textAlign: TextAlign.end,
          style: const TextStyle(
            color: Colors.white,
          ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: dataController,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                  border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
          ),
        ),
      ],
    );
  }
}
