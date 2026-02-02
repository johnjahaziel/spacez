import 'package:flutter/material.dart';
import 'package:spacez/size_config.dart';

class StyledVerticalDivider extends StatelessWidget {
  final double height;
  final Color color;
  final double dashHeight;
  final double gap;

  const StyledVerticalDivider({
    super.key,
    required this.height,
    required this.color,
    this.dashHeight = 10,
    this.gap = 6,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.w(2),
      height: height,
      child: CustomPaint(
        painter: _StyledPainter(
          color: color,
          dashHeight: dashHeight,
          gap: gap,
        ),
      ),
    );
  }
}

class _StyledPainter extends CustomPainter {
  final Color color;
  final double dashHeight;
  final double gap;

  _StyledPainter({
    required this.color,
    required this.dashHeight,
    required this.gap,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = size.width;

    double y = 0;

    while (y < size.height) {
      final dashEnd = (y + dashHeight).clamp(0.0, size.height);

      canvas.drawLine(
        Offset(size.width / 2, y),
        Offset(size.width / 2, dashEnd),
        paint,
      );

      y += dashHeight + gap;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
