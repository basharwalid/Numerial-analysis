import 'package:math_expressions/math_expressions.dart';

class Bisection { //model
  double xli;
  double xui;
  double errorStop;
  int? numberOfIteration;
  String equation;

  List<double> xl = [];
  List<double> fxl = [];
  List<double> xu = [];
  List<double> fxu = [];
  List<double> xr = [];
  List<double> fxr = [];
  List<double> error = [];
  List<int> iteration = [];

  Bisection({ required this.xli, required this.xui, required this.equation, required this.errorStop, this.numberOfIteration = 0});

  double calcFunction(double xValue) {
    Variable x = Variable('x');
    Parser p = Parser();
    Expression exp = p.parse(equation);
    ContextModel cm = ContextModel();
    cm.bindVariable(x, Number(xValue));
    return exp.evaluate(EvaluationType.REAL, cm);
  }

  void calculateBisection(){

    if (numberOfIteration != 0){
      for(int i = 0 ; i<numberOfIteration! ; i++ ){
        xl.add(xli);
        fxl.add(calcFunction(xl[i]));
        xu.add(xui);
        fxu.add(calcFunction(xu[i]));
        xr.add((xl[i] + xu[i])/2);
        fxr.add(calcFunction(xr[i]));

        if(i == 0){
          error.add(100);
        }else {
          error.add(((xr[i] - xr[i-1]) / xr[i]).abs() * 100);
        }

        iteration.add(i);
        if (fxl[i]*fxr[i]>0){
          xli = xr[i];
        } else{
          xui = xr[i];
        }
      }
    }else {
      int i = -1;
      do {
        i++;
        xl.add(xli);
        fxl.add(calcFunction(xl[i]));
        xu.add(xui);
        fxu.add(calcFunction(xu[i]));
        xr.add((xl[i] + xu[i])/2);
        fxr.add(calcFunction(xr[i]));

        if(i == 0){
          error.add(100);
        }else {
          error.add(((xr[i] - xr[i-1]) / xr[i]).abs() * 100);
        }

        iteration.add(i);
        if (fxl[i]*fxr[i]>0){
          xli = xr[i];
        } else{
          xui = xr[i];
        }

      }while(error[i] >= errorStop);
    }
  }
}

