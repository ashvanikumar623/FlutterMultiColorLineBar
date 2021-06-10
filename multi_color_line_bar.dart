import 'package:flutter/material.dart';

class MultiColorLineBar extends CustomPainter {
  List<Map<String, dynamic>> data;
  double height = 5;

  MultiColorLineBar(this.height, this.data);

  @override
  void paint(Canvas canvas, Size size) {
    double per = 20;
    double fill = 0;

    int totalRecord = 0;
    data.forEach((element) {
      int count = element['count'];
      totalRecord = totalRecord + count;
    });

    data.forEach((element) {
      per = (element['count'] * 100) / totalRecord;
      double fill2 = (per * (size.width) / 100);
      var paint = Paint();
      paint.style = PaintingStyle.fill;
      paint.color = Color(element["color"]);
      Rect rect = Rect.fromLTWH(fill, 0, fill2, height);
      canvas.drawRect(rect, paint);
      fill = fill + fill2;
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
