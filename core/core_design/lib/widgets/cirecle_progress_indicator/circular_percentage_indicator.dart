import 'package:flutter/widgets.dart';

final class CircularPercentageIndicator extends StatelessWidget {
  const CircularPercentageIndicator({
    required this.percentage,
    required this.size,
    required this.color,
    required this.backgroundColor,
    super.key,
  });
  final double percentage;
  final double size;
  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: Size(size, size),
            painter: _CirclePainter(
              percentage: percentage,
              color: color,
              backgroundColor: backgroundColor,
            ),
          ),
          Text(
            '${percentage.toStringAsFixed(0)}%',
          ),
        ],
      ),
    );
  }
}

final class _CirclePainter extends CustomPainter {
  _CirclePainter({
    required this.percentage,
    required this.color,
    required this.backgroundColor,
  });
  final double percentage;
  final Color color;
  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final foregroundPaint = Paint()
      ..color = color
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final radius = size.width / 2;
    final center = Offset(size.width / 2, size.height / 2);

    // Draw the background circle
    canvas.drawCircle(center, radius - 5, backgroundPaint);

    // Draw the percentage arc
    final sweepAngle = (percentage / 100) * 360;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - 5),
      -90 * (3.141592 / 180), // Start angle in radians
      sweepAngle * (3.141592 / 180), // Sweep angle in radians
      false,
      foregroundPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
