import 'package:math_expressions/math_expressions.dart';

class FalsePosition {
  double xlI ;
  double xuI ;
  double errorStopPoint ;
  String equation = '';
  int? iterationLimit ;

  List<double> xl = [];
  List<double> fxl = [];
  List<double> xu = [];
  List<double> fxu = [];
  List<double> xr = [];
  List<double> fxr = [];
  List<double> error = [] ;
  List<int> iterations = [];

  FalsePosition({required this.xlI , required this.xuI , required this.equation ,required this.errorStopPoint , this.iterationLimit =0});

  double calcFunction(double xValue){
    Variable x = Variable('x');
    Parser p = Parser();
    Expression exp = p.parse(equation);
    ContextModel cm = ContextModel();
    cm.bindVariable(x,Number(xValue));
    return exp.evaluate(EvaluationType.REAL, cm);
  }

  void calcFalsePosition(){
    if (iterationLimit != 0){
      for(int i = 0 ; i< iterationLimit! ; i++ ){
        xl.add(xlI);
        fxl.add(calcFunction(xl[i]));
        xu.add(xuI);
        fxu.add(calcFunction(xu[i]));
        xr.add(xu[i]-(fxu[i]*(xl[i]-xu[i]))/(fxl[i]-fxu[i]));
        fxr.add(calcFunction(xr[i]));
        if(i == 0 ){
          error.add(100);
        }else {
          error.add(((xr[i] - xr[i-1]) / xr[i]).abs() * 100);
        }
        iterations.add(i);
        if (fxl[i]*fxr[i]>0){
          xlI = xr[i];
        } else{
          xuI = xr[i];
        }
      }
    }else {
      int i = -1;
      do {
        i++;
        xl.add(xlI);
        fxl.add(calcFunction(xl[i]));
        xu.add(xuI);
        fxu.add(calcFunction(xu[i]));
        xr.add(xu[i]-(fxu[i]*(xl[i]-xu[i]))/(fxl[i]-fxu[i]));
        fxr.add(calcFunction(xr[i]));

        if(i == 0 ){
          error.add(100);
        }else {
          error.add(((xr[i] - xr[i-1]) / xr[i]).abs() * 100);
        }

        iterations.add(i);
        if (fxl[i]*fxr[i]>0){
          xlI = xr[i];
        } else{
          xuI = xr[i];
        }

      }while(error[i] >= errorStopPoint);
    }
  }
}