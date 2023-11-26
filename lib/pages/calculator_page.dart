import 'package:calc_app/controllers/calc_controler.dart';
import 'package:calc_app/utils/color.dart';
import 'package:calc_app/widgets/button_calc.dart';
import 'package:calc_app/widgets/colored_text.dart';
import 'package:calc_app/widgets/delete_button.dart';
import 'package:calc_app/widgets/equal_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var calcControler = Get.find<CalcController>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Calculator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.5,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.0,
              0.5,
            ],
            colors: [
              Color(ColorCustom.gradient1),
              (ColorCustom.gradient2),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Obx(() {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ColoredText(text: '${calcControler.result}'),
              );
            }),
            Obx(() {
              return FittedBox(
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20, bottom: 25, left: 20),
                  child: Text(
                    '${calcControler.input}',
                    style: const TextStyle(
                        fontFamily: 'AzurHeavy',
                        color: Colors.white,
                        letterSpacing: 5,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.0,
                    0.5,
                  ],
                  colors: [
                    Color(ColorCustom.gradient1),
                    (ColorCustom.gradient2),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonCalc('C', ColorCustom.primaryYellow, true,
                            calcControler),
                        deleteBtn(calcControler),
                        buttonCalc('+/-', ColorCustom.primaryYellow, false,
                            calcControler),
                        buttonCalc('÷', ColorCustom.primaryYellow, false,
                            calcControler),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonCalc('7', ColorCustom.white, true, calcControler),
                        buttonCalc('8', ColorCustom.white, true, calcControler),
                        buttonCalc('9', ColorCustom.white, true, calcControler),
                        buttonCalc('x', ColorCustom.primaryYellow, false,
                            calcControler),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonCalc('4', ColorCustom.white, true, calcControler),
                        buttonCalc('5', ColorCustom.white, true, calcControler),
                        buttonCalc('6', ColorCustom.white, true, calcControler),
                        buttonCalc('-', ColorCustom.primaryYellow, false,
                            calcControler),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonCalc('1', ColorCustom.white, true, calcControler),
                        buttonCalc('2', ColorCustom.white, true, calcControler),
                        buttonCalc('3', ColorCustom.white, true, calcControler),
                        buttonCalc('+', ColorCustom.primaryYellow, false,
                            calcControler),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonCalc(
                            '00', ColorCustom.white, true, calcControler),
                        buttonCalc('0', ColorCustom.white, true, calcControler),
                        buttonCalc(
                            '.', ColorCustom.white, false, calcControler),
                        equalBtn(
                          calcControler,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
