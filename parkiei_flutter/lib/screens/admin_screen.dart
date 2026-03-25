import 'package:flutter/material.dart';
import '../widgets/phone_mockup.dart';
import '../widgets/top_controls.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PhoneMockup(
      child: _AdminBody(),
    );
  }
}

class _AdminBody extends StatelessWidget {
  const _AdminBody();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF666666),
      child: Column(
        children: const [
          TopControls(),
        ],
      ),
    );
  }
}
