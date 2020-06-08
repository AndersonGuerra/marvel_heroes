import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget typeButton(String assetPath, Color beginColor, Color endColor) {
  return Flexible(
    child: RawMaterialButton(
      onPressed: () {},
      padding: EdgeInsets.all(0.0),
      child: Ink(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [beginColor, endColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SvgPicture.asset(
          assetPath,
          color: Colors.white,
          width: 32,
          height: 32,
        ),
      ),
      shape: CircleBorder(),
    ),
  );
}
