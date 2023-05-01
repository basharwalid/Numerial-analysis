import 'package:flutter/material.dart';

class equationInputWidget extends StatelessWidget {
  equationInputWidget();
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
              child: const Text("Enter Equation" ,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),

              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical:8),

                ),
              ),
            ),
          ],
        ),
      ],
    );

  }
}
