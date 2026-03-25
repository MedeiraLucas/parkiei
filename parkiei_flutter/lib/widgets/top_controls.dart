import 'package:flutter/material.dart';
import 'parkiei_logo.dart';

class TopControls extends StatelessWidget {
  const TopControls({super.key});

  Widget _circle(IconData icon) {
    return Container(
      width: 19,
      height: 19,
      decoration: BoxDecoration(
        color: const Color(0xFF222222),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white24, width: 0.8),
      ),
      child: Icon(icon, size: 11, color: Colors.white70),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(7, 14, 7, 8),
      child: Row(
        children: [
          _circle(Icons.menu),
          const Spacer(),
          const ParkieiLogo(size: 18),
          const Spacer(),
          _circle(Icons.person_outline),
        ],
      ),
    );
  }
}
