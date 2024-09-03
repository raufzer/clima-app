import 'package:flutter/material.dart';

class CurvedClipper extends CustomClipper<Path> {
  final double borderRadius;

  CurvedClipper(this.borderRadius);

  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, borderRadius);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 2, size.height + borderRadius, size.width, size.height);
    path.lineTo(size.width, borderRadius);
    path.quadraticBezierTo(size.width / 2, 0, 0, borderRadius);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}