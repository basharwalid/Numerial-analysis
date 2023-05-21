import 'package:flutter/material.dart';

class secantMethodWidget extends StatelessWidget {
  String text;
  TextEditingController dataController;
  secantMethodWidget(this.text, this.dataController);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children:  [
            Container(
              padding: const EdgeInsets.only(left: 5),
              width: 60,
              child: Text(text,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: dataController,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: Colors.grey[400],
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
        ),
      ],
    );
  }
}
