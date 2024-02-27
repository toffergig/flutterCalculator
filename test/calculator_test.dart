import 'package:calculator/calculator/data/repository/calculator_repository.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
late CalculatorRepository calculatorRepository;
setUp(() {
  calculatorRepository = CalculatorRepository();
});

test('Addition:Given two numbers, When add method is called, Then the sum is calculated correctly', (){
 // Given
  int number1 = 2;
  int number2 = 3;

  // When
  int result =  calculatorRepository.addition(number1, number2);

  // Then
  expect(result, equals(5));

});

test('Addition: Given two negative numbers, When add method is called, Then the sum is calculated correctly', () {
  // Given

  int number1 = -1;
  int number2 = 1;

  // When
  int result = calculatorRepository.addition(number1, number2);

  // Then
  expect(result, equals(0));

});






























}
