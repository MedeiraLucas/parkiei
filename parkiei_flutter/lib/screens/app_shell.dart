import 'package:flutter/material.dart';
import 'admin_screen.dart';
import 'finish_modal_screen.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'parking_profile_screen.dart';
import 'register_screen.dart';
import 'route_screen.dart';
import 'start_modal_screen.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int currentIndex = 0;

  final labels = const [
    'Login',
    'Cadastro',
    'Home',
    'Percurso',
    'Perfil',
    'Admin',
    'Iniciar',
    'Finalizar',
  ];

  final pages = const [
    LoginScreen(),
    RegisterScreen(),
    HomeScreen(),
    RouteScreen(),
    ParkingProfileScreen(),
    AdminScreen(),
    StartModalScreen(),
    FinishModalScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parkiei - versão mais fiel'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: labels.length,
              itemBuilder: (context, index) {
                final selected = currentIndex == index;

                return Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: ChoiceChip(
                    label: Text(labels[index]),
                    selected: selected,
                    onSelected: (_) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: pages[currentIndex],
          ),
        ],
      ),
    );
  }
}
