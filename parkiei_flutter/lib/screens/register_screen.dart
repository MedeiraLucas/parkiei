import 'package:flutter/material.dart';
import '../widgets/dark_field.dart';
import '../widgets/parkiei_logo.dart';
import '../widgets/phone_mockup.dart';
import '../widgets/red_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PhoneMockup(
      child: _RegisterBody(),
    );
  }
}

class _RegisterBody extends StatelessWidget {
  const _RegisterBody();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF232323),
      padding: const EdgeInsets.fromLTRB(14, 25, 14, 18),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: const Color(0xFF2C2C2C),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                size: 9,
                color: Colors.white70,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const ParkieiLogo(size: 30),
          const SizedBox(height: 18),
          const DarkField(hint: 'Digite seu Nome Completo'),
          const DarkField(hint: 'Digite seu Melhor E-mail'),
          const DarkField(hint: 'Digite seu Telefone'),
          const DarkField(hint: 'Digite seu CPF'),
          const SizedBox(height: 5),
          const RedButton(text: 'Cadastrar-se'),
          const SizedBox(height: 13),
          Text(
            'Já tem uma conta clique aqui para entrar',
            style: TextStyle(
              color: Colors.white.withOpacity(0.45),
              fontSize: 6.8,
            ),
          ),
        ],
      ),
    );
  }
}
