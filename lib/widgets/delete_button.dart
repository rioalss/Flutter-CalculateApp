import 'package:calc_app/controllers/calc_controler.dart';
import 'package:calc_app/utils/color.dart';
import 'package:flutter/material.dart';

IconButton deleteBtn(CalcController controler) {
    return IconButton(
      onPressed: () {
        controler.backspaceDelete();
      },
      icon: const Icon(
        Icons.backspace_outlined,
        size: 25,
        color: Color(ColorCustom.primaryYellow),
      ),
    );
  }