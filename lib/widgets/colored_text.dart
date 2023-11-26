import 'package:flutter/material.dart';
import '../utils/color.dart';

class ColoredText extends StatelessWidget {
  final String text;

  const ColoredText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final List<String> parts = text.split('');
    final List<TextSpan> spans = [];

    for (final part in parts) {
      spans.add(
        TextSpan(
          text: part,
          style: part.contains(RegExp(r'[\+\-\x\÷]'))
              ? const TextStyle(
                  fontFamily: 'AzurThin',
                  color: Color(ColorCustom.primaryYellow),
                  letterSpacing: 6,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              : const TextStyle(
                  fontFamily: 'AzurThin',
                  color: Colors.white,
                  letterSpacing: 6,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
        ),
      );
    }

    return RichText(
      text: TextSpan(
        children: spans,
      ),
    );
  }
}