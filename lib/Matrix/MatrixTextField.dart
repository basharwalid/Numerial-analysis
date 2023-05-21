import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MatrixTextField extends StatelessWidget {
  TextEditingController controller ;
  Function validationFunction;
  String title ;

  MatrixTextField({
    required this.controller,
    required this.title,
    required this.validationFunction
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 20 , horizontal: 15),
      child: TextFormField(
        validator: (value) => validationFunction(value),
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9,.,-]+')),],
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        cursorColor: Colors.black,
        style:const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
        decoration: InputDecoration(
          contentPadding:const EdgeInsets.all(30),
          filled: true,
          fillColor: Colors.grey[400],
          hintText: title,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 24,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  width: 2,
                  color: Color(0xff5F7A3C),
              )
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  width: 2,
                  color: Colors.red
              )
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  width: 2,
                  color: Colors.white
              )
          ),
          errorBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  width: 2,
                  color:Colors.red
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  width: 2,
                  color: Colors.green
              )
          ),
        ),
      ),
    );
  }
}