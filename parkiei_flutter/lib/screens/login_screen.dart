import 'package:flutter/material.dart';
import '../widgets/dark_field.dart';
import '../widgets/parkiei_logo.dart';
import '../widgets/phone_mockup.dart';
import '../widgets/red_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PhoneMockup(
      child: _LoginBody(),
    );
  }
}

class _LoginBody extends StatelessWidget {
  const _LoginBody();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF232323),
      padding: const EdgeInsets.fromLTRB(14, 34, 14, 26),
      child: Column(
        children: [
          const Spacer(flex: 3),
          const ParkieiLogo(size: 30),
          const SizedBox(height: 24),
          const DarkField(hint: 'Usuario@email.com.br'),
          const DarkField(
            hint: '**************',
            obscure: true,
            icon: Icons.visibility_outlined,
          ),
          const SizedBox(height: 4),
          const RedButton(text: 'Entrar'),
          const SizedBox(height: 18),
          Text(
            'Novo por aqui crie sua conta! Clique aqui',
            style: TextStyle(
              color: Colors.white.withOpacity(0.45),
              fontSize: 6.8,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            'ou entrar com',
            style: TextStyle(
              color: Colors.white.withOpacity(0.35),
              fontSize: 6.5,
            ),
          ),
          const SizedBox(height: 9),
          Container(
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                'G',
                style: TextStyle(
                  color: Color(0xFF3C6AE5),
                  fontSize: 9,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          const Spacer(flex: 4),
        ],
      ),
    );
  }
}
