import 'package:flutter/material.dart';
import 'package:your_daily_quiz/utils/color_utils.dart';

class TagWidget extends StatelessWidget {
  final String value;

  const TagWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        border: Border.all(
          style: BorderStyle.solid,
          color: ColorUtils.getRandomColor(),
          width: 3
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),
      ),
    );
  }
}