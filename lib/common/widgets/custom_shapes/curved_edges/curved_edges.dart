import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);

    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final sFirstCurve = Offset(0, size.height - 20);
    final sLastCurve = Offset(size.width - 30, size.height - 20);

    path.quadraticBezierTo(
        sFirstCurve.dx, sFirstCurve.dy, sLastCurve.dx, sLastCurve.dy);

    final tFirstCurve = Offset(size.width, size.height - 20);
    final tLastCurve = Offset(size.width, size.height);

    path.quadraticBezierTo(
        tFirstCurve.dx, tFirstCurve.dy, tLastCurve.dx, tLastCurve.dy);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
