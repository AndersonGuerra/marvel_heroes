import 'package:flutter/material.dart';
import 'package:marvel_heroes/styles/styles.dart';

Widget characterCard(String avatarUrl) {
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
                  fit: BoxFit.cover, image: NetworkImage(avatarUrl))),
        ),
        Container(
          width: 150,
          height: 250,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ])),
        ),
        Positioned(
            left: 10,
            top: 170,
            child: Text(
              "T'Challa",
              style: cardSubtitle,
            )),
        Positioned(
          left: 10,
          top: 190,
          child: Text("Pantera Negra", style: cardTitle),
        ),
      ],
    ),
  );
}
