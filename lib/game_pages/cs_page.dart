import 'package:flutter/material.dart';

class CSPage extends StatefulWidget {
  const CSPage({super.key});

  @override
  State<CSPage> createState() => _CSPageState();
}

class CardItem{
  final String urlImage;
  final String title;

  const CardItem({
    required this.urlImage,
    required this.title,
  });
}

class CsItem{
  final String image;
  final String title;

  const CsItem({
    required this.image,
    required this.title,
  });
}

class _CSPageState extends State<CSPage> {

  List<CardItem> items = [
    const CardItem(
      urlImage: "assets/images/player_cs/fallen.jpg",
      title: "FalleN",
    ),
    const CardItem(
      urlImage: "assets/images/player_cs/kscerato.jpg",
      title: "Kscerato",
    ),
    const CardItem(
      urlImage: "assets/images/player_cs/coldzera.jpg",
      title: "Coldzera",
    ),
    const CardItem(
      urlImage: "assets/images/player_cs/fer.jpg",
      title: "Fer",
    ),
    const CardItem(
      urlImage: "assets/images/player_cs/boltz.jpg",
      title: "Boltz",
    ),
  ];

  List<CsItem> itemsCs = [
    const CsItem(
      image: "assets/images/elo_cs/global.png",
      title: "0.78%",
    ),
    const CsItem(
      image:"assets/images/elo_cs/supremo.png",
      title: "2.61%",
    ),
    const CsItem(
      image: "assets/images/elo_cs/aguia.png",
      title: "3.19%",
    ),
    const CsItem(
      image: "assets/images/elo_cs/xerife.png",
      title: "4.07%",
    ),
    const CsItem(
      image: "assets/images/elo_cs/ak.png",
      title: "5.25%",
    ),
    const CsItem(
      image: "assets/images/elo_cs/ouro.png",
      title: "8.17%",
    ),
    const CsItem(
      image: "assets/images/elo_cs/prata.png",
      title: "7.7%",
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
                "assets/images/csgo2.jpg",
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
                        Color.fromARGB(255, 46, 37, 19),
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
                                    'Counter Strike 2',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.05,
                                      fontFamily: 'CS',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/images/4.png",
                                    height: height * 0.035,
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.01),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [                                  
                                  Text(
                                    'Strategic shooter game - FPS free to play',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.03,
                                      fontFamily: 'CS',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'PG - 16',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.03,
                                      fontFamily: 'CS',
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
                                  itemCount: 7,
                                  separatorBuilder: (context, _) => const SizedBox(width: 10),
                                  itemBuilder: (context, index) => iconCs(itemCs: itemsCs[index]),
                                ),
                              ),
                              SizedBox(height: height * 0.035),
                              Text(
                                "Em Counter Strike: Global Offensive, você poder encarar uma das mais cruas experiências de um FPS (First Person Shooter). A simplicidade do original ainda está presente na nova versão, que obriga todos os jogadores a contar somente com a sua habilidade para dominar os campos de batalha.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  height: 1.2,
                                  color: Colors.white,
                                  fontFamily: 'CS',
                                  fontSize: width * 0.04,
                                  leadingDistribution: TextLeadingDistribution.even,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              Text(
                                "Os dois grandes objetivos clássicos são os de: terroristas e contra terroristas. Uma hora você defende o território e no outro tenta o explodir, com 13 rounds. Jogue para descobrir qual a melhor estratégia neste FPS clássico que retornou com diversas novidades... Bem vindo ao CS:GO 2!",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  height: 1.2,
                                  color: Colors.white,
                                  fontFamily: 'CS',
                                  fontSize: width * 0.04,
                                  leadingDistribution: TextLeadingDistribution.even,
                                ),
                              ),
                              SizedBox(height: height * 0.03),
                              Text(
                                "Conheça o time da SJG",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'CS',
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

  Widget iconCs({
    required CsItem itemCs,
  }) => Container(
    width: width1 * 0.47,
    height: height1 * 0.06,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 194, 128, 66).withOpacity(0.3),
      borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    child: Padding(
      padding: EdgeInsets.all(width1 * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            itemCs.image,
            height: height1 * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(top: height1 * 0.0238),
            child: Column(
              children: [
                Text(
                  itemCs.title,
                  style: TextStyle(
                    fontFamily: "CS",
                    color: Colors.white,
                    fontSize: width1 * 0.035,
                  ),
                ),
                SizedBox(height: width1 * 0.025),
                Text(
                  "of the players",
                  style: TextStyle(
                    fontFamily: "CS",
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
          ],
        ),
      );

}