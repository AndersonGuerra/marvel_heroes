import 'package:flutter/material.dart';
import 'package:marvel_heroes/models/character.dart';
import 'package:marvel_heroes/screens/details.dart';
import 'package:marvel_heroes/styles/styles.dart';

import 'characterCard.dart';

class CharactersSection extends StatelessWidget {
  final List<Character> characters;
  final String sectionName;
  CharactersSection(this.sectionName, this.characters);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              sectionName,
              style: sectionTitle,
            ),
            Text(
              "Ver tudo",
              style: TextStyle(color: Color(0xffB7B7C8)),
            ),
          ],
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: characters.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => Details(characters[index])));
                  },
                  child: characterCard(characters[index]),
                );
              }),
        )
      ],
    );
  }
}
