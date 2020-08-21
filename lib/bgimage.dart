import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/can.png",
      height: 200,
      width: 700,
      fit: BoxFit.contain,
    );
  }
}
