import 'package:calc_app/bindings/binding.dart';
import 'package:calc_app/pages/calculator_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ! Created By
// ! Rio Alss

// ? GitHub
// ? rioalss

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      home: const CalculatorPage(),
    );
  }
}

