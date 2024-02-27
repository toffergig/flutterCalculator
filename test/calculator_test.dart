import 'package:flutter_test/flutter_test.dart';

void main() {

 


test('Addition:Given two numbers, When add method is called, Then the sum is calculated correctly', (){
 // Given
  final calculator = Calculator();
  int number1 = 2;
  int number2 = 3;

  // When
  int result = calculator.add(number1, number2);

  // Then
  expect(result, equals(5));

});

test('Addition: Given two negative numbers, When add method is called, Then the sum is calculated correctly', () {
  // Given
  final calculator = Calculator();
  int number1 = -1;
  int number2 = 1;

  // When
  int result = calculator.add(number1, number2);

  // Then
  expect(result, equals(0));

  // Additional Then statements for more test cases
});






























}
