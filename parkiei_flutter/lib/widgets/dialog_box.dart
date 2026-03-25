import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final String text;
  final String leftText;
  final String rightText;
  final bool multilineRight;

  const DialogBox({
    super.key,
    required this.text,
    required this.leftText,
    required this.rightText,
    this.multilineRight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 10),
      decoration: BoxDecoration(
        color: const Color(0xFF777777),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 8,
              height: 1.25,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _button(leftText, const Color(0xFFA3A3A3), Colors.white),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: _button(
                  rightText,
                  const Color(0xFFFF2A2A),
                  Colors.white,
                  multiline: multilineRight,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _button(String text, Color color, Color textColor, {bool multiline = false}) {
    return Container(
      height: 26,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w700,
            fontSize: multiline ? 7 : 8,
            height: 1.05,
          ),
        ),
      ),
    );
  }
}
