class CalculatorRepository {

  double addition(double num1, double num2){
    return num1+num2;
  }

  double subtraction(double num1, double num2){
    return num1-num2;
  }

  double multiplication(double num1, double num2){
    return num1*num2;
  }

  double division(double num1, double num2){
    return num1==0||num2==0? throw Exception() : num1 / num2;
  }

 
}
