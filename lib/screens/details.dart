import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes/models/character.dart';
import 'package:marvel_heroes/styles/styles.dart';
import 'package:marvel_heroes/widgets/movieCard.dart';
// import 'package:marvel_heroes/widgets/characterCard.dart';

Widget barGenerator(String habilidade, int total) {
  double totalAdaptado = total * 0.4;
  String text1 = '';
  String text2 = '';
  for (var i = 0; i < 40; i++) {
    if (i < totalAdaptado) {
      text1 += 'I ';
    } else {
      text2 += 'I ';
    }
  }
  return Padding(
    padding: EdgeInsets.only(bottom: 16.0, left: 32.0, right: 32.0),
    child: Row(
      children: [
        Expanded(
          child: Text(
            habilidade,
            style: ability,
          ),
        ),
        Text(
          text1,
          style: TextStyle(
              fontFamily: 'GilroyRegular',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white),
        ),
        Text(
          text2,
          style: TextStyle(
              fontFamily: 'GilroyRegular',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.grey),
        )
      ],
    ),
  );
}

class Details extends StatefulWidget {
  final Character character;

  Details(this.character);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String avatarUrl;

  @override
  void initState() {
    super.initState();
    avatarUrl =
        "https://github.com/Lorenalgm/marvel-heroes/raw/master/assets${widget.character.imagePath.replaceFirst(".", "")}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 500,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Hero(
                    tag: widget.character.name,
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(avatarUrl))),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black,
                            ])),
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.character.alterEgo,
                        style: profileSubtitle,
                      ),
                      Text(
                        widget.character.name,
                        style: profileTitle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/age.svg",
                                color: Colors.white,
                              ),
                              Text(
                                "${(2020 - int.parse(widget.character.caracteristics.birth))} anos",
                                style: caracteristic,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/weight.svg",
                                  color: Colors.white),
                              Text(
                                "${widget.character.caracteristics.weight.value}kg"
                                    .toString(),
                                style: caracteristic,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/height.svg",
                                  color: Colors.white),
                              Text(
                                "${widget.character.caracteristics.height.value}m"
                                    .toString(),
                                style: caracteristic,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/universe.svg",
                                  color: Colors.white),
                              Text(
                                widget.character.caracteristics.universe,
                                style: caracteristic,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                preferredSize: Size.fromHeight(116)),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 32, right: 32, top: 12),
              child: Text(
                widget.character.biography,
                style: description,
              ),
            ),
          ),
          SliverPadding(padding: EdgeInsets.all(8)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 32, right: 32, top: 16),
              child: Text(
                "Habilidades",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ),
          ),
          SliverPadding(padding: EdgeInsets.all(8)),
          SliverList(
              delegate: SliverChildListDelegate([
            barGenerator("Força", widget.character.abilities.force),
            barGenerator(
                "Inteligência", widget.character.abilities.intelligence),
            barGenerator("Agilidade", widget.character.abilities.agility),
            barGenerator("Resistência", widget.character.abilities.endurance),
            barGenerator("Velocidade", widget.character.abilities.velocity),
          ])),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 32, right: 32, top: 16),
              child: Text(
                "Filmes",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ),
          ),
          SliverPadding(padding: EdgeInsets.all(8)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: widget.character.movies.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return movieCard(widget.character.movies[index]);
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
