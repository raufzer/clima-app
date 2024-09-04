import 'package:flutter/material.dart';

class InvertedCurvedClipper extends CustomClipper<Path> {
  final double curveHeight;

  InvertedCurvedClipper(this.curveHeight);

  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height - curveHeight);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - curveHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant 
 CustomClipper<Path> oldClipper) => false; 

}