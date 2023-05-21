import 'package:flutter/material.dart';

import '../Theme/MyTheme.dart';

class MatrixContainer extends StatelessWidget {

  String title ;
  MatrixContainer(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xff5F7A3C),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Text(
          title,
          style:const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        )
    );
  }
}