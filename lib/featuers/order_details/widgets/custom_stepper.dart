import 'package:flutter/material.dart';

class CustomStepper extends StatelessWidget {
  final int currentIndex;

  const CustomStepper({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildStep(0, 'Order Placed', Icons.edit),
        _buildLine(),
        _buildStep(1, 'Complete', Icons.check),
      ],
    );
  }

  Widget _buildStep(int index, String label, IconData icon) {
    final isActive = currentIndex >= index;

    return Column(
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: isActive ? Colors.blue : Colors.grey,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
              size: 17,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
              color: Colors.black87, fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildLine() {
    return Container(
      width: 80,
      height: 20,
      child: CustomPaint(
        painter: _LinePainter(currentIndex),
      ),
    );
  }
}

class _LinePainter extends CustomPainter {
  final int currentIndex;

  _LinePainter(this.currentIndex);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    final double halfHeight = size.height / 2;
    final double quarterWidth = size.width / 4;

    final Offset start = Offset(0, halfHeight);
    final Offset mid = Offset(quarterWidth * 2, halfHeight);
    final Offset end = Offset(size.width, halfHeight);

    canvas.drawLine(start, mid, paint);

    final Paint dotPaint = Paint()
      ..color = currentIndex == 0 ? Colors.grey : Colors.blue;

    canvas.drawCircle(mid, 2, dotPaint);
    canvas.drawLine(mid, end, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
