import 'package:flutter/material.dart';
import 'package:marvel_heroes/models/character.dart';
import 'package:marvel_heroes/styles/styles.dart';

Widget characterCard(Character character) {
  // "https://github.com/Lorenalgm/marvel-heroes/raw/master/assets/chars/black-panther.png"
  String avatarUrl = "assets${character.imagePath.replaceFirst(".", "")}";
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Stack(
      children: [
        Hero(
          tag: character.name,
          child: Container(
            width: 150,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(avatarUrl))),
          ),
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
            top: 150,
            child: Text(
              character.alterEgo,
              style: cardSubtitle,
            )),
        Positioned(
          left: 10,
          top: 170,
          child: Container(
            width: 100,
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    character.name,
                    style: cardTitle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
