import 'package:calc_app/controllers/calc_controler.dart';
import 'package:calc_app/utils/color.dart';
import 'package:flutter/material.dart';

ElevatedButton equalBtn(CalcController controller) {
    return ElevatedButton(
      onPressed: () {
        controller.tapEqual();
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15),
        backgroundColor: const Color(ColorCustom.primaryYellow),
      ),
      child: const Text(
        '=',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    );
  }