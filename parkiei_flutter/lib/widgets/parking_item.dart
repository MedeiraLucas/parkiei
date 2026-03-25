import 'package:flutter/material.dart';
import '../models/parking_spot.dart';

class ParkingItem extends StatelessWidget {
  final ParkingSpot spot;

  const ParkingItem({
    super.key,
    required this.spot,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(
        color: spot.selected ? const Color(0xFF64593B) : const Color(0xFF505050),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: const Color(0xFF2D2D2D),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.local_parking,
              size: 10,
              color: Colors.white70,
            ),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${spot.name}  ',
                    style: const TextStyle(
                      fontSize: 7.5,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: spot.note,
                    style: const TextStyle(
                      fontSize: 6.5,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            spot.distance,
            style: const TextStyle(
              fontSize: 7,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
