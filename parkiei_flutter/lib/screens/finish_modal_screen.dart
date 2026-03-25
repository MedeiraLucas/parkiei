import 'package:flutter/material.dart';
import '../widgets/bottom_panel.dart';
import '../widgets/dialog_box.dart';
import '../widgets/map_canvas.dart';
import '../widgets/phone_mockup.dart';
import '../widgets/top_controls.dart';

class FinishModalScreen extends StatelessWidget {
  const FinishModalScreen({super.key});

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
          Center(
            child: DialogBox(
              text: 'Deseja interromper o\npercurso com destino o\nestacionamento da Tia ?',
              leftText: 'Cancelar',
              rightText: 'Interromper',
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
