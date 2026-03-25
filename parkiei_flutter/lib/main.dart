import 'package:flutter/material.dart';
import 'screens/app_shell.dart';

void main() {
  runApp(const ParkieiApp());
}

class ParkieiApp extends StatelessWidget {
  const ParkieiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parkiei',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF181818),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF2B2B),
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontFamily: 'sans-serif'),
        ),
      ),
      home: const AppShell(),
    );
  }
}
