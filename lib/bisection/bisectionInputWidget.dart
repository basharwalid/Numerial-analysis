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
           const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text("Bisection Method",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children:  [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        label: Text(text ,
                          style: const TextStyle(
                            color: Colors.black
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
    );
  }
}
