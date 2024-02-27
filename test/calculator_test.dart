import 'package:calculator/calculator/data/repository/calculator_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
   final CalculatorRepository calculatorRepository = CalculatorRepository();
  group('Multiplication', () {
    test('Multiplying positive integers', () {
      expect(calculatorRepository.multplication(2, 3), equals(6));
    });

    test('Multiplying negative integers', () {
      expect(calculatorRepository.multplication(-2, -3), equals(6));
    });

    test('Multiplying mixed signs', () {
      expect(calculatorRepository.multplication(2, -3), equals(-6));
    });

    test('Multiplying by zero', () {
      expect(calculatorRepository.multplication(0, 5), equals(0));
    });

    test('Multiplying large numbers', () {
      expect(calculatorRepository.multplication(1000000000, 2), equals(2000000000));
    });

    test('Multiplying by one', () {
      expect(calculatorRepository.multplication(1, 5), equals(5));
    });

    test('Multiplying floating-point numbers', () {
      expect(calculatorRepository.multplication(2.5, 4), equals(10));
    });
  });
}