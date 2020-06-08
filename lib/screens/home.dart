import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes/models/application.dart';
import 'package:marvel_heroes/services/api.dart';
import 'package:marvel_heroes/styles/styles.dart';
import 'package:marvel_heroes/widgets/TypeButton.dart';
import 'package:marvel_heroes/widgets/characterSection.dart';

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
          Application application = snapshot.data;

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
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: SvgPicture.asset("assets/icons/search.svg"),
                )
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
                  CharactersSection("Hérois", application.heroes),
                  CharactersSection("Vilões", application.villains),
                  CharactersSection("Anti-hérois", application.antiHeroes),
                  CharactersSection("Alienígenas", application.aliens),
                  CharactersSection("Humanos", application.humans),
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
