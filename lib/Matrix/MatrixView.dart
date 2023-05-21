import 'package:flutter/material.dart';
import 'package:numerical/Matrix/MatrixNavigator.dart';
import 'package:numerical/Matrix/MatrixResultScreen.dart';
import 'package:numerical/Matrix/MatrixTextField.dart';
import 'package:numerical/Matrix/MatrixViewModel.dart';
import 'package:numerical/matricesProvider/matricesProvider.dart';
import 'package:provider/provider.dart';

import 'MatrixButton.dart';

class MatrixScreen extends StatefulWidget {
  static const String routeName = 'matrix screen ';

  @override
  State<MatrixScreen> createState() => _MatrixScreenState();
}
class _MatrixScreenState extends State<MatrixScreen> implements MatrixNavigator{
  MatriXViewModel viewModel = MatriXViewModel();
  @override
  void initState() {
    super.initState();
    viewModel.provider = Provider.of<matricesProvider>(context, listen: false);
    viewModel.navigator = this;
  }
  @override
  void dispose() {
    super.dispose();
    viewModel.provider = null ;
    viewModel.navigator = null;
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewModel,
      child: Scaffold(
        backgroundColor: const Color(0xff1B0820),
        appBar: AppBar(
          backgroundColor: const Color(0xff1B0820),
          elevation: 0,
        ),
        body: Consumer<MatriXViewModel>(
          builder: (context, value, child) => Padding(
            padding: const EdgeInsets.all(50),
            child: Form(
              key: value.formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      MatrixButton("Gauss Elimin" , value.gaussElimination),
                      MatrixButton("Gauss Jordan" , value.calcGaussJordan),
                      MatrixButton("LU" , value.calcMatrixWithLU),
                      MatrixButton("Cramer" , value.calcCramer),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(child: MatrixTextField(controller: value.rowOneControllers[0], title: "X11" , validationFunction:value.validationFunction,)),
                              Expanded(child: MatrixTextField(controller: value.rowOneControllers[1], title: "X12" , validationFunction:value.validationFunction)),
                              Expanded(child: MatrixTextField(controller: value.rowOneControllers[2], title: "X13" , validationFunction:value.validationFunction)),
                              Expanded(child: MatrixTextField(controller: value.rowOneControllers[3], title: "X14" , validationFunction:value.validationFunction)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(child: MatrixTextField(controller: value.rowTwoControllers[0], title: "X21" , validationFunction:value.validationFunction)),
                              Expanded(child: MatrixTextField(controller: value.rowTwoControllers[1], title: "X22" , validationFunction:value.validationFunction)),
                              Expanded(child: MatrixTextField(controller: value.rowTwoControllers[2], title: "X23" , validationFunction:value.validationFunction)),
                              Expanded(child: MatrixTextField(controller: value.rowTwoControllers[3], title: "X24" , validationFunction:value.validationFunction)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(child: MatrixTextField(controller: value.rowThreeControllers[0], title: "X31" , validationFunction:value.validationFunction)),
                              Expanded(child: MatrixTextField(controller: value.rowThreeControllers[1], title: "X32" , validationFunction:value.validationFunction)),
                              Expanded(child: MatrixTextField(controller: value.rowThreeControllers[2], title: "X33" , validationFunction:value.validationFunction)),
                              Expanded(child: MatrixTextField(controller: value.rowThreeControllers[3], title: "X34" , validationFunction:value.validationFunction)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void goToResultScreen() {
    Navigator.pushNamed(context, MatricesResultScreen.routeName);
  }

}
