import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/calculator.dart'; // Import your calculator class
import 'package:calculator/calculator_repository.dart'; // Import your calculator repository

void main() {
   final CalculatorRepository calculatorRepository = CalculatorRepository();
  group('Multiplication', () {
    test('Multiplying positive integers', () {
      expect(Calculator.multiply(2, 3), equals(6));
      expect(Calculator.multiply(5, 4), equals(20));
      expect(Calculator.multiply(10, 10), equals(100));
    });

    test('Multiplying negative integers', () {
      expect(Calculator.multiply(-2, -3), equals(6));
      expect(Calculator.multiply(-5, -4), equals(20));
      expect(Calculator.multiply(-10, -10), equals(100));
    });

    test('Multiplying mixed signs', () {
      expect(Calculator.multiply(2, -3), equals(-6));
      expect(Calculator.multiply(-5, 4), equals(-20));
      expect(Calculator.multiply(-10, 10), equals(-100));
    });

    test('Multiplying by zero', () {
      expect(Calculator.multiply(0, 5), equals(0));
      expect(Calculator.multiply(10, 0), equals(0));
      expect(Calculator.multiply(0, 0), equals(0));
    });

    test('Multiplying large numbers', () {
      expect(Calculator.multiply(1000000000, 2), equals(2000000000));
      expect(Calculator.multiply(999999999, 3), equals(2999999997));
      expect(
          Calculator.multiply(123456789, 987654321), equals(121932631112635269));
    });

    test('Multiplying by one', () {
      expect(Calculator.multiply(1, 5), equals(5));
      expect(Calculator.multiply(-1, 10), equals(-10));
      expect(Calculator.multiply(1, 0), equals(0));
    });

    test('Multiplying floating-point numbers', () {
      expect(Calculator.multiply(2.5, 4), equals(10));
      expect(Calculator.multiply(3.14159, 2), equals(6.28318));
      expect(Calculator.multiply(-1.5, 3), equals(-4.5));
    });

    // Add tests for boundary cases if applicable
    // Remember to handle overflow scenarios if necessary
  });
}