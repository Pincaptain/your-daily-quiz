import "package:flutter/material.dart";

class AnswerWidget extends StatelessWidget {
  final String answer;

  const AnswerWidget({super.key, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.only(bottom: 8),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          answer,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
