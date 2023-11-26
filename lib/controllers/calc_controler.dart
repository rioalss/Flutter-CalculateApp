import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcController extends GetxController {
  var input = '0'.obs;
  var result = ''.obs;

  tappedExp(String exp) {
    if (exp == '.') {
      input.value += exp;
    } else if (exp == '%' ||
        exp == '÷' ||
        exp == 'x' ||
        exp == '-' ||
        exp == '+') {
      input.value += exp;
    } else {
      if (input.value == "0") {
        if (exp == "00") {
          input.value;
        } else {
          input.value = exp;
        }
      } else {
        input.value += exp;
      }
    }
    update();
  }

  backspaceDelete() {
    input.value.length == 1
        ? input.value = '0'
        : input.value = input.substring(0, input.value.length - 1);
    input.value == "0" ? result.value = '' : result.value;
    update();
  }

  isNegative() {
    input.startsWith('-')
        ? input.value = input.substring(1)
        : input.value = '-${input.value}';
    update();
  }

  delete() {
    input.value = '0';
    result.value = '';
    update();
  }

  tapEqual() {
    var temp = input.substring(input.value.length - 1);
    if (temp == '÷' ||
        temp == 'x' ||
        temp == '-' ||
        temp == '+' ||
        temp == '.') {
      input.value = input.substring(0, input.value.length - 1);
      String exp;
      exp = input.replaceAll("x", "*");
      exp = exp.replaceAll("÷", "/");

      Parser p = Parser();
      Expression exps = p.parse(exp);
      ContextModel cm = ContextModel();

      result.value = input.value;
      input.value = '${exps.evaluate(EvaluationType.REAL, cm)}';
      (input.substring(input.value.length - 2)) == ".0"
          ? input.value = input.substring(0, input.value.length - 2)
          : input.value;
      (input.contains('.'))
          ? input.value = double.parse((input.value)).toStringAsFixed(2)
          : input.value;
      update();
    } else {
      String exp;
      exp = input.replaceAll('x', '*');
      exp = exp.replaceAll("÷", "/");

      Parser p = Parser();
      Expression exps = p.parse(exp);
      ContextModel cm = ContextModel();
      result.value = input.value;
      input.value = '${exps.evaluate(EvaluationType.REAL, cm)}';
      (input.substring(input.value.length - 2)) == ".0"
          ? input.value = input.substring(0, input.value.length - 2)
          : input.value;
      (input.contains('.'))
          ? input.value = double.parse((input.value)).toStringAsFixed(2)
          : input.value;
      update();
    }
  }
}
