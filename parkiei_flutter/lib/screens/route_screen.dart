import 'package:flutter/material.dart';
import '../widgets/bottom_panel.dart';
import '../widgets/map_canvas.dart';
import '../widgets/phone_mockup.dart';
import '../widgets/top_controls.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PhoneMockup(
      child: Stack(
        children: [
          MapCanvas(
            child: Column(
              children: [
                TopControls(),
                Spacer(),
              ],
            ),
          ),
          BottomPanel(
            title: 'A CAMINHO',
            subtitle: 'Estacionamento do Tio   800m',
          ),
        ],
      ),
    );
  }
}
