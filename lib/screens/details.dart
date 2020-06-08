import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes/models/character.dart';
import 'package:marvel_heroes/styles/styles.dart';
// import 'package:marvel_heroes/widgets/characterCard.dart';

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
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage(avatarUrl))),
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
                                widget.character.caracteristics.birth,
                                style: caracteristic,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/weight.svg",
                                  color: Colors.white),
                              Text(
                                widget.character.caracteristics.weight.value
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
                                widget.character.caracteristics.height.value
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
                preferredSize: Size.fromHeight(100)),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 32, right: 32, top: 32),
              child: Text(
                widget.character.biography,
                style: description,
              ),
            ),
          ),
          SliverPadding(padding: EdgeInsets.all(8)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 32, right: 32),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Habilidade", style: TextStyle(color: Colors.white)),
                  Text("Barra", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Habilidade", style: TextStyle(color: Colors.white)),
                  Text("Barra", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Habilidade", style: TextStyle(color: Colors.white)),
                  Text("Barra", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Habilidade", style: TextStyle(color: Colors.white)),
                  Text("Barra", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Habilidade", style: TextStyle(color: Colors.white)),
                  Text("Barra", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
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
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Text("teste");
                      // return characterCard(
                      //     "https://github.com/Lorenalgm/marvel-heroes/raw/master/assets/chars/black-panther.png");
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
