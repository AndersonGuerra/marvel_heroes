import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes/services/api.dart';
import 'package:marvel_heroes/styles/styles.dart';
import 'package:marvel_heroes/widgets/TypeButton.dart';
import 'package:marvel_heroes/widgets/characterCard.dart';

import 'details.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: SvgPicture.asset(
                "assets/icons/marvel.svg",
                color: Color(0xffF2264B),
              ),
              centerTitle: true,
              leading: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              actions: [
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {})
              ],
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Bem vindo ao Marvel Heroes",
                    style: homeSubtitle,
                  ),
                  Text("Escolha o seu personagem", style: homeTitle),
                  Row(children: [
                    typeButton("assets/icons/hero.svg", Color(0xff005BEA),
                        Color(0xff00C6FB)),
                    typeButton("assets/icons/villain.svg", Color(0xffED1D24),
                        Color(0xffED1F69)),
                    typeButton("assets/icons/antihero.svg", Color(0xffB224EF),
                        Color(0xff7579FF)),
                    typeButton("assets/icons/alien.svg", Color(0xff0BA360),
                        Color(0xff3CBA92)),
                    typeButton("assets/icons/human.svg", Color(0xffFF7EB3),
                        Color(0xffFF758C))
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hérois",
                        style: sectionTitle,
                      ),
                      Text("Ver tudo"),
                    ],
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => Details()));
                            },
                            child: characterCard(
                                "https://github.com/Lorenalgm/marvel-heroes/raw/master/assets/chars/black-panther.png"),
                          );
                        }),
                  )
                ],
              ),
            ),
          );
        } else {
          return Scaffold(
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Carregando dados...")
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
