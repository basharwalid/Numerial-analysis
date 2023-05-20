import 'package:flutter/material.dart';

import '../Matrix/MatrixModel.dart';

class matricesProvider extends ChangeNotifier{
  double x1 = 0  , x2 =0 , x3 = 0 , m21=0 , m31=0  , m32=0;
  List<Matrix> matrices = [];
  String type = 'none';

  void updateData(){

  }
}