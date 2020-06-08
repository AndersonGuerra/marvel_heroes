import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes/styles/styles.dart';
import 'package:marvel_heroes/widgets/characterCard.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://github.com/Lorenalgm/marvel-heroes/raw/master/assets/chars/black-panther.png"))),
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
                        "T'Challa",
                        style: profileSubtitle,
                      ),
                      Text(
                        "Pantera Negra",
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
                                "30 anos",
                                style: caracteristic,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/weight.svg",
                                  color: Colors.white),
                              Text(
                                "78kg",
                                style: caracteristic,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/height.svg",
                                  color: Colors.white),
                              Text(
                                "1.80m",
                                style: caracteristic,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/universe.svg",
                                  color: Colors.white),
                              Text(
                                "Terra 616",
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
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur convallis, augue quis pharetra pellentesque, eros nisl sodales nisi, ut gravida odio ligula sit amet dui. Etiam eget aliquet justo, quis sollicitudin mauris. Cras dictum congue quam ac vestibulum. Pellentesque sed metus eget nunc luctus fringilla. Praesent id turpis vitae elit tincidunt ullamcorper et vitae dui. Vivamus pellentesque urna at erat condimentum aliquet. Duis ut urna sed mi ullamcorper tincidunt a ut lacus. Praesent a rutrum ex. Mauris malesuada tellus a ipsum suscipit, vel condimentum orci ultrices. Nunc varius aliquam ante. Aenean in orci eu eros interdum tincidunt ac non felis. Sed tempus non mauris ac dictum. Nulla facilisi. Nam sit amet volutpat nibh. Nunc est massa, egestas eu est at, rhoncus accumsan erat. Mauris posuere nibh orci, eget porta orci eleifend ac. Curabitur malesuada suscipit suscipit. Aliquam augue lorem, sollicitudin eu ligula vel, viverra consectetur odio. Fusce vestibulum malesuada tincidunt. Phasellus et tortor vestibulum, malesuada nulla sed, dignissim sapien. Sed quam tortor, ultrices nec sollicitudin ut, egestas non odio.",
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
