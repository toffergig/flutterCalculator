import 'package:calculator/calculator/data/repository/calculator_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
   final CalculatorRepository calculatorRepository = CalculatorRepository();
  group('Multiplication', () {
    test('iven Calculator class, when multiplication is called and both numbers are positive, then output positive number for multiplying positive numbers', () {
      expect(calculatorRepository.multplication(2, 3), equals(6));
    });

    test('Given Calculator class, when multiplication is called and both numbers are negative, then output positive number for multiplying positive numbers', () {
      expect(calculatorRepository.multplication(-2, -3), equals(6));
    });

    test('Given Calculator class, when multiplication is called and both are mixed signs, then output negative number for multiplying mixed signed numbers', () {
      expect(calculatorRepository.multplication(2, -3), equals(-6));
    });

    test('Given Calculator class, when multiplication is called and there is a zero, then output zero', () {
      expect(calculatorRepository.multplication(0, 5), equals(0));
    });

    test('Given Calculator class, when multiplication is called and there is a 1, then output same number multiplied to one', () {
      expect(calculatorRepository.multplication(1, 5), equals(5));
    });

    test('Given Calculator class, when multiplication is called and there is a decimal number, then output correct product for multiplying floating-point numbers', () {
      expect(calculatorRepository.multplication(2.5, 4), equals(10));
    });
  });
}