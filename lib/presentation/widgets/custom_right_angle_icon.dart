import 'package:flutter/material.dart';
import 'package:pro_multimedia/style/app_colors.dart';

class CustomRightAngleIcon extends StatelessWidget {
  final Color? color;
  const CustomRightAngleIcon({super.key, this.color = AppColors.white});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(25, 25),
      painter: RightAnglePainter(color: color!),
    );
  }
}

class RightAnglePainter extends CustomPainter {
  final Color color;

  RightAnglePainter({super.repaint, required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(Offset(size.width * 0.2, size.height * 0.2),
        Offset(size.width * 0.8, size.height * 0.2), paint);
    canvas.drawLine(Offset(size.width * 0.8, size.height * 0.2),
        Offset(size.width * 0.8, size.height * 0.8), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
