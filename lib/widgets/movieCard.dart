import 'package:flutter/material.dart';

Widget movieCard(String moviePath) {
  // "https://github.com/Lorenalgm/marvel-heroes/raw/master/assets/chars/black-panther.png"
  String movieUrl = "assets${moviePath.replaceFirst(".", "")}";
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Stack(
      children: [
        Container(
          width: 150,
          height: 250,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(movieUrl))),
        ),
      ],
    ),
  );
}
