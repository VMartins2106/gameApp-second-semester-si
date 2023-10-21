import 'package:flutter/material.dart';

class DotaPage extends StatefulWidget {
  const DotaPage({super.key});

  @override
  State<DotaPage> createState() => _DotaPageState();
}

class CardItem{
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle
  });
}

class DotaItem{
  final String image;
  final String title;

  const DotaItem({
    required this.image,
    required this.title,
  });
}

class _DotaPageState extends State<DotaPage> {

  List<CardItem> items = [
    const CardItem(
      urlImage: "assets/images/player_dota/zai.jpg",
      title: "Zai",
      subtitle: "\Top Laner"
    ),
    const CardItem(
      urlImage: "assets/images/player_dota/nisha.jpg",
      title: "Nisha",
      subtitle: "\Jungle"
    ),
    const CardItem(
      urlImage: "assets/images/player_dota/insania.jpg",
      title: "iNSaNiA",
      subtitle: "\Mid Laner"
    ),
    const CardItem(
      urlImage: "assets/images/player_dota/micke.jpg",
      title: "MiCKe",
      subtitle: "\ADC"
    ),
    const CardItem(
      urlImage: "assets/images/player_dota/boxi.jpg",
      title: "Boxi",
      subtitle: "\Suport"
    ),
  ];

  List<DotaItem> itemsDota = [
    const DotaItem(
      image: "assets/images/elo_dota/1.png",
      title: "0.089%",
    ),
    const DotaItem(
      image:"assets/images/elo_dota/2.png",
      title: "0.034%",
    ),
    const DotaItem(
      image: "assets/images/elo_dota/3.png",
      title: "2%",
    ),
    const DotaItem(
      image: "assets/images/elo_dota/4.png",
      title: "20%%",
    ),
    const DotaItem(
      image: "assets/images/elo_dota/5.png",
      title: "35%%",
    ),
    const DotaItem(
      image: "assets/images/elo_dota/6.png",
      title: "15%",
    ),
    const DotaItem(
      image: "assets/images/elo_dota/7.png",
      title: "6%",
    ),
    const DotaItem(
      image: "assets/images/elo_dota/8.png",
      title: "3.5%",
    ),
  ];

  double width1 = 0;
  double height1 = 0;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    width1 = width;
    height1 = height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          width: width,
          height: height + (height * 0.12),
          child: Stack(
            children: <Widget>[
              Image.asset(
                "assets/images/dota2.jpg",
                fit: BoxFit.fill,
              ),
              Positioned(            
                top: height * 0.25,
                child: Container(
                  padding: EdgeInsets.only(
                    left: width * 0.06,
                    right: width * 0.06,
                  ),
                  width: width,
                  height: height,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 0, 0, 0),
                        Color.fromARGB(255, 7, 41, 6),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: height * 0.02),
                    child: Padding(
                      padding: const EdgeInsets.only(),
                      // CONFIGURAR AS MARGENS
                      child: Column(
                        children: <Widget>[
                          // COLUNA COM LINHA DENTRO PARA NOME E ESTRELAS
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Dota 2',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.05,
                                      fontFamily: 'dota',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/images/4_5.png",
                                    height: height * 0.035,
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.01),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [                                  
                                  Text(
                                    'Multiplayer battle arena (MOBA)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.03,
                                      fontFamily: 'dota',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'PG - 12',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.03,
                                      fontFamily: 'dota',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.03),
                              SizedBox(
                                height: height * 0.1, 
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 8,
                                  separatorBuilder: (context, _) => const SizedBox(width: 10),
                                  itemBuilder: (context, index) => iconDota(itemDota: itemsDota[index]),
                                ),
                              ),
                              SizedBox(height: height * 0.035),
                              Text(
                                "Dota 2 é um jogo eletrônico do gênero multiplayer online battle arena (MOBA) desenvolvido e publicado pela Valve. Lançado em 2013, o jogo é uma sequência de Defense of the Ancients (DotA), uma modificação criada pela comunidade para o jogo Warcraft III: Reign of Chaos, da Blizzard Entertainment.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  height: 1.1,
                                  color: Colors.white,
                                  fontFamily: 'dota',
                                  fontSize: width * 0.034,
                                  leadingDistribution: TextLeadingDistribution.even,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              Text(
                                "O Dota 2 é jogado em partidas entre dois times de cinco jogadores, com cada time ocupando e defendendo sua própria base separada no mapa. O jogo conta com mais de 120 campeões com habilidades únicas que você pode aprimorar e adaptar para o seu estilo de jogo!",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  height: 1.1,
                                  color: Colors.white,
                                  fontFamily: 'dota',
                                  fontSize: width * 0.034,
                                  leadingDistribution: TextLeadingDistribution.even,
                                ),
                              ),
                              SizedBox(height: height * 0.03),
                              Text(
                                "Conheça o time da SJG",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'dota',
                                  fontSize: width * 0.06
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.035),
                          Container(
                            height: height * 0.2,                            
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              separatorBuilder: (context, _) => const SizedBox(width: 10),
                              itemBuilder: (context, index) => buildPlayerCard(item: items[index]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconDota({
    required DotaItem itemDota,
  }) => Container(
    width: width1 * 0.45,
    height: height1 * 0.06,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 18, 114, 50).withOpacity(0.3),
      borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    child: Padding(
      padding: EdgeInsets.all(width1 * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            itemDota.image,
            height: height1 * 0.07,
          ),
          Padding(
            padding: EdgeInsets.only(top: height1 * 0.015),
            child: Column(
              children: [
                Text(
                  itemDota.title,
                  style: TextStyle(
                    fontFamily: "dota",
                    color: Colors.white,
                    fontSize: width1 * 0.04,
                  ),
                ),
                SizedBox(height: width1 * 0.03),
                Text(
                  "of the players",
                  style: TextStyle(
                    fontFamily: "dota",
                    color: Colors.white,
                    fontSize: width1 * 0.025,
                  ),
                ),
              ],
            ),
          ),
        ]
      ),
    ),
  );

  Widget buildPlayerCard({
    required CardItem item,
  }) => Container(
        width: width1 * 0.3,
        height: 100,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Material(
                    child: Image.asset(
                      item.urlImage,
                      fit: BoxFit.cover,
                    ),
                  )
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              item.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              item.subtitle,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      );

}