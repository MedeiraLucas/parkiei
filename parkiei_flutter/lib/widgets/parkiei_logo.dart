import 'package:flutter/material.dart';

class ParkieiLogo extends StatelessWidget {
  final double size;

  const ParkieiLogo({
    super.key,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic,
          letterSpacing: -0.8,
          height: 1,
        ),
        children: const [
          TextSpan(
            text: 'PARK',
            style: TextStyle(color: Color(0xFFFF3131)),
          ),
          TextSpan(
            text: 'IEI',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
