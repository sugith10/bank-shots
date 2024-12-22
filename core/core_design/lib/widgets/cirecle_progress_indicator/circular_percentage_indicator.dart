import 'package:flutter/widgets.dart';

final class CircularPercentageIndicator extends StatelessWidget {
  const CircularPercentageIndicator({
    required this.percentage,
    required this.size,
    required this.color,
    required this.backgroundColor,
    this.strokeWidth = 15,
    super.key,
  });

  final double percentage;
  final double size;
  final Color color;
  final Color backgroundColor;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: percentage),
      duration: const Duration(milliseconds: 1500),
      curve: Curves.easeInOut,
      builder: (context, value, _) {
        return SizedBox(
          height: size,
          width: size,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: Size(size, size),
                painter: _CirclePainter(
                  percentage: value,
                  color: color,
                  backgroundColor: backgroundColor,
                  strokeWidth: strokeWidth,
                ),
              ),
              Text(
                '${value.toStringAsFixed(0)}%',
              ),
            ],
          ),
        );
      },
    );
  }
}

final class _CirclePainter extends CustomPainter {
  _CirclePainter({
    required this.percentage,
    required this.color,
    required this.backgroundColor,
    required this.strokeWidth,
  });
  final double percentage;
  final Color color;
  final Color backgroundColor;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final foregroundPaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
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
