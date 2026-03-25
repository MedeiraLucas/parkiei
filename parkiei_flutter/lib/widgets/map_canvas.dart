import 'package:flutter/material.dart';

class MapCanvas extends StatelessWidget {
  final Widget? child;

  const MapCanvas({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _MapPainter(),
      child: child,
    );
  }
}

class _MapPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final bg = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color(0xFF10243A),
          Color(0xFF1C2D48),
          Color(0xFF0D1A2D),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Offset.zero & size);

    canvas.drawRect(Offset.zero & size, bg);

    final line = Paint()
      ..color = Colors.white.withOpacity(0.08)
      ..strokeWidth = 1;

    for (double x = 0; x < size.width; x += 26) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), line);
    }
    for (double y = 0; y < size.height; y += 26) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), line);
    }

    final road = Paint()
      ..color = Colors.white.withOpacity(0.09)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawPath(
      Path()
        ..moveTo(size.width * 0.08, size.height * 0.28)
        ..quadraticBezierTo(
          size.width * 0.30,
          size.height * 0.18,
          size.width * 0.58,
          size.height * 0.28,
        )
        ..quadraticBezierTo(
          size.width * 0.75,
          size.height * 0.35,
          size.width * 0.94,
          size.height * 0.22,
        ),
      road,
    );

    canvas.drawPath(
      Path()
        ..moveTo(size.width * 0.20, size.height * 0.70)
        ..quadraticBezierTo(
          size.width * 0.40,
          size.height * 0.54,
          size.width * 0.54,
          size.height * 0.68,
        )
        ..quadraticBezierTo(
          size.width * 0.68,
          size.height * 0.84,
          size.width * 0.88,
          size.height * 0.73,
        ),
      road,
    );

    final blue = Paint()
      ..color = const Color(0xFF2A84FF)
      ..strokeWidth = 3.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(
      Path()
        ..moveTo(size.width * 0.78, size.height * 0.08)
        ..lineTo(size.width * 0.78, size.height * 0.28)
        ..lineTo(size.width * 0.58, size.height * 0.28)
        ..lineTo(size.width * 0.58, size.height * 0.58)
        ..lineTo(size.width * 0.43, size.height * 0.58)
        ..lineTo(size.width * 0.43, size.height * 0.78),
      blue,
    );

    final red = Paint()..color = const Color(0xFFFF4A4A);
    for (final point in [
      Offset(size.width * 0.30, size.height * 0.33),
      Offset(size.width * 0.45, size.height * 0.37),
      Offset(size.width * 0.63, size.height * 0.32),
      Offset(size.width * 0.77, size.height * 0.41),
    ]) {
      canvas.drawCircle(point, 4.5, red);
    }

    final pin = Paint()..color = const Color(0xFF2A84FF);
    canvas.drawCircle(Offset(size.width * 0.43, size.height * 0.78), 11, pin);
    final center = Paint()..color = Colors.white;
    canvas.drawCircle(Offset(size.width * 0.43, size.height * 0.78), 3.5, center);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
