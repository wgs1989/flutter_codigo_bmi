import 'dart:math';

class BMIBrain {
  double height;
  double weight;

  BMIBrain({
    required this.height, //182
    required this.weight, //76
  });

  //calcularBMI

  double calculateBMI() {
    double bmi = weight / pow((height / 100), 2);
    return bmi;
  }

  //

  String getResult() {
    double bmi = calculateBMI();
    String result = "";

    if (bmi < 18.5) {
      result = "Bajo peso";
    } else if (bmi < 25) {
      result = "Normal";
    } else {
      result = "Sobrepeso";
    }

    return result;
  }

  String getInterpretation() {
    double bmi = calculateBMI();
    String interpretation = "";

    if (bmi < 18.5) {
      interpretation = "Debes de cuidar tu dieta.";
    } else if (bmi < 25) {
      interpretation = "Todo está bien, sigue así";
    } else {
      interpretation =
          "Debes de cuidar tu dieta y hacer un poco más de ejercicio.";
    }

    return interpretation;
  }
}
