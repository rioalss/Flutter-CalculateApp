import 'package:calc_app/controllers/calc_controler.dart';
import 'package:flutter/material.dart';

OutlinedButton buttonCalc(
      String text, int color, bool boolean, CalcController controller) {
    return OutlinedButton(
      onPressed: () {
        switch (text) {
          case '+/-':
            controller.isNegative();
            break;
          case 'C':
            controller.delete();
            break;
          default:
            controller.tappedExp(text);
        }
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(5),
        side: const BorderSide(color: Colors.transparent),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: boolean ? 'AzurThin' : 'DankMono',
          fontWeight: FontWeight.bold,
          color: Color(color),
          fontSize: 25,
        ),
      ),
    );
  }
