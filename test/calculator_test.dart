import 'package:calculator/calculator/data/repository/calculator_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
   final CalculatorRepository calculatorRepository = CalculatorRepository();
  group('Multiplication', () {
    test('Multiplying positive integers', () {
      expect(calculatorRepository.multplication(2, 3), equals(6));
      expect(calculatorRepository.multplication(5, 4), equals(20));
      expect(calculatorRepository.multplication(10, 10), equals(100));
    });

    test('Multiplying negative integers', () {
      expect(calculatorRepository.multplication(-2, -3), equals(6));
      expect(calculatorRepository.multplication(-5, -4), equals(20));
      expect(calculatorRepository.multplication(-10, -10), equals(100));
    });

    test('Multiplying mixed signs', () {
      expect(calculatorRepository.multplication(2, -3), equals(-6));
      expect(calculatorRepository.multplication(-5, 4), equals(-20));
      expect(calculatorRepository.multplication(-10, 10), equals(-100));
    });

    test('Multiplying by zero', () {
      expect(calculatorRepository.multplication(0, 5), equals(0));
      expect(calculatorRepository.multplication(10, 0), equals(0));
      expect(calculatorRepository.multplication(0, 0), equals(0));
    });

    test('Multiplying large numbers', () {
      expect(calculatorRepository.multplication(1000000000, 2), equals(2000000000));
      expect(calculatorRepository.multplication(999999999, 3), equals(2999999997));
      expect(
          calculatorRepository.multplication(123456789, 987654321), equals(121932631112635269));
    });

    test('Multiplying by one', () {
      expect(calculatorRepository.multplication(1, 5), equals(5));
      expect(calculatorRepository.multplication(-1, 10), equals(-10));
      expect(calculatorRepository.multplication(1, 0), equals(0));
    });

    test('Multiplying floating-point numbers', () {
      expect(calculatorRepository.multplication(2.5, 4), equals(10));
      expect(calculatorRepository.multplication(3.14159, 2), equals(6.28318));
      expect(calculatorRepository.multplication(-1.5, 3), equals(-4.5));
    });

    // Add tests for boundary cases if applicable
    // Remember to handle overflow scenarios if necessary
  });
}