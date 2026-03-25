import 'package:flutter/material.dart';
import '../widgets/phone_mockup.dart';
import '../widgets/top_controls.dart';

class ParkingProfileScreen extends StatelessWidget {
  const ParkingProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PhoneMockup(
      child: _ProfileBody(),
    );
  }
}

class _ProfileBody extends StatelessWidget {
  const _ProfileBody();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF232323),
      child: Column(
        children: [
          const TopControls(),
          const SizedBox(height: 6),
          const Text(
            'Estacionamento do Tio',
            style: TextStyle(
              fontSize: 8.8,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (_) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 1),
                child: Icon(
                  Icons.star,
                  size: 9,
                  color: Color(0xFFFFC344),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 92,
              decoration: BoxDecoration(
                color: const Color(0xFF787878),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Icon(
                  Icons.add_photo_alternate_outlined,
                  size: 34,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
            decoration: BoxDecoration(
              color: const Color(0xFFA5A5A5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: const [
                Text(
                  'Recomendados',
                  style: TextStyle(
                    fontSize: 7.5,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 6),
                _CommentTile(
                  name: 'Joao da Silva,',
                  text: 'recomendo!',
                ),
                _CommentTile(
                  name: 'Joana do Vale,',
                  text: 'recomendo!',
                ),
                _CommentTile(
                  name: 'Joao anderson,',
                  text: 'recomendo!',
                ),
                _CommentTile(
                  name: 'Joana do Silva,',
                  text: 'recomendo!',
                ),
                _CommentTile(
                  name: 'Joao ddo trens,',
                  text: 'recomendo!',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CommentTile extends StatelessWidget {
  final String name;
  final String text;

  const _CommentTile({
    required this.name,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF8B8B8B),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 7,
            backgroundColor: Color(0xFF555555),
            child: Icon(Icons.person, size: 8, color: Colors.white70),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: name,
                    style: const TextStyle(
                      fontSize: 6.7,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: ' $text',
                    style: const TextStyle(
                      fontSize: 6.5,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
