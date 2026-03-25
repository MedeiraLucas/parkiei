import 'package:flutter/material.dart';
import '../models/parking_spot.dart';
import '../widgets/bottom_panel.dart';
import '../widgets/dialog_box.dart';
import '../widgets/map_canvas.dart';
import '../widgets/parking_item.dart';
import '../widgets/phone_mockup.dart';
import '../widgets/top_controls.dart';

class StartModalScreen extends StatelessWidget {
  const StartModalScreen({super.key});

  static const spots = [
    ParkingSpot(
      name: 'Estacionamento do Tio',
      distance: '1,5 km',
      note: '',
      selected: false,
    ),
    ParkingSpot(
      name: 'Estacionamento Central',
      distance: '2,0 km',
      note: '',
      selected: true,
    ),
    ParkingSpot(
      name: 'Estacionamento da Torre',
      distance: '2,5 km',
      note: '',
      selected: false,
    ),
    ParkingSpot(
      name: 'Estacionamento JK',
      distance: '4,5 km',
      note: '',
      selected: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PhoneMockup(
      child: Stack(
        children: [
          MapCanvas(
            child: Column(
              children: [
                const TopControls(),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(9, 0, 9, 60),
                  child: Column(
                    children: spots.map((spot) => ParkingItem(spot: spot)).toList(),
                  ),
                ),
              ],
            ),
          ),
          const Center(
            child: DialogBox(
              text: 'Deseja iniciar o percurso\npara o estacionamento\nEstacionamento do Tio\nou Reservar uma vaga?',
              leftText: 'Reservar\numa vaga',
              rightText: 'Iniciar\nPercurso',
              multilineRight: true,
            ),
          ),
          const BottomPanel(
            title: 'PERTO DE VOCE',
            subtitle: '',
          ),
        ],
      ),
    );
  }
}
