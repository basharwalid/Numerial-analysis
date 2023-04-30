import 'package:flutter/material.dart';

class bisectioninputWidget extends StatelessWidget {
  String text;
  bisectioninputWidget(this.text);
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
                width: 40,
                child: Text(text ,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  color: Colors.white,
                ),

                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical:8),
                    child: TextField(
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
              ),
            ],
          ),
        ],
    );
  }
}
