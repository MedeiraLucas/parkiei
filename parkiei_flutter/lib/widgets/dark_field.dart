import 'package:flutter/material.dart';

class DarkField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData? icon;

  const DarkField({
    super.key,
    required this.hint,
    this.obscure = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      margin: const EdgeInsets.only(bottom: 8),
      child: TextField(
        obscureText: obscure,
        style: const TextStyle(fontSize: 10, color: Colors.white),
        decoration: InputDecoration(
          isDense: true,
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.white38,
            fontSize: 8.5,
          ),
          fillColor: const Color(0xFF0F0F0F),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          suffixIcon: icon != null
              ? Icon(icon, size: 12, color: Colors.white38)
              : null,
          suffixIconConstraints: const BoxConstraints(
            minWidth: 18,
            minHeight: 18,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
