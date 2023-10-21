import 'package:flutter/material.dart';

class VavaPage extends StatefulWidget {
  const VavaPage({super.key});

  @override
  State<VavaPage> createState() => _VavaPageState();
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

class VavaItem{
  final String image;
  final String title;

  const VavaItem({
    required this.image,
    required this.title,
  });
}

class _VavaPageState extends State<VavaPage> {

  List<CardItem> items = [
    const CardItem(
      urlImage: "assets/images/player_vava/aspas.jpg",
      title: "Aspas",
      subtitle: "\Duelista"
    ),
    const CardItem(
      urlImage: "assets/images/player_vava/sacy.jpg",
      title: "Sacy",
      subtitle: "\Inciador"
    ),
    const CardItem(
      urlImage: "assets/images/player_vava/saadhak.jpeg",
      title: "Saadhak",
      subtitle: "\Sentinela"
    ),
    const CardItem(
      urlImage: "assets/images/player_vava/less.jpg",
      title: "Less",
      subtitle: "\Controlador"
    ),
    const CardItem(
      urlImage: "assets/images/player_vava/dgzin.jpg",
      title: "Dgzin",
      subtitle: "\Iniciador"
    ),
  ];

  List<VavaItem> itemsVava = [
    const VavaItem(
      image: "assets/images/elo_vava/radiante.png",
      title: "0.2%",
    ),
    const VavaItem(
      image:"assets/images/elo_vava/imortal.png",
      title: "1.1%",
    ),
    const VavaItem(
      image: "assets/images/elo_vava/diamante.png",
      title: "4.4%",
    ),
    const VavaItem(
      image: "assets/images/elo_vava/platina.png",
      title: "13.7%",
    ),
    const VavaItem(
      image: "assets/images/elo_vava/ouro.png",
      title: "24.6%",
    ),
    const VavaItem(
      image: "assets/images/elo_vava/prata.png",
      title: "26.1%",
    ),
    const VavaItem(
      image: "assets/images/elo_vava/bronze.png",
      title: "21.8%",
    ),
    const VavaItem(
      image: "assets/images/elo_vava/ferro.png",
      title: "8.1%",
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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          width: width,
          height: height + (height * 0.12),
          child: Stack(
            children: <Widget>[
              Image.asset(
                "assets/images/valorant.jpg",
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
                        Color.fromARGB(255, 9, 19, 49),
                        Color.fromARGB(255, 19, 48, 87),
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
                                    'Valorant',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.05,
                                      fontFamily: 'Valorant',
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
                                      fontFamily: 'Valorant',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'PG - 16',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.03,
                                      fontFamily: 'Valorant',
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
                                  itemBuilder: (context, index) => iconVava(itemVava: itemsVava[index]),
                                ),
                              ),
                              SizedBox(height: height * 0.035),
                              Text(
                                "Valorant é um FPS tático em que cinco jogadores batalham contra outros cinco visando plantar ou desarmar a chamada Spike. Um dos destaques de Valorant é a grande variedade de personagens nos quais os jogadores podem se especializar.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  height: 1.1,
                                  color: Colors.white,
                                  fontFamily: 'Valorant',
                                  fontSize: width * 0.035,
                                  leadingDistribution: TextLeadingDistribution.even,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              Text(
                                "O nosso famoso vava se aproveita de um tipo de jogo que está em alta no momento. Trata-se de um FPS tático em que cinco jogadores batalham contra outros cinco visando plantar ou desarmar a chamada Spike. Cada player tem apenas uma única vida por rodada (em um total de 25) e a equipe que ganhar 13 rodadas primeiro se consagra como a vencedora.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  height: 1.1,
                                  color: Colors.white,
                                  fontFamily: 'Valorant',
                                  fontSize: width * 0.035,
                                  leadingDistribution: TextLeadingDistribution.even,
                                ),
                              ),
                              SizedBox(height: height * 0.025),
                              Text(
                                "Conheça o time da SJG",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Valorant',
                                  fontSize: width * 0.06
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.03),
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

  Widget iconVava({
    required VavaItem itemVava,
  }) => Container(
    width: width1 * 0.4,
    height: height1 * 0.06,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 107, 90, 255).withOpacity(0.3),
      borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    child: Padding(
      padding: EdgeInsets.all(width1 * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            itemVava.image,
            height: height1 * 0.07,
          ),
          Padding(
            padding: EdgeInsets.only(top: height1 * 0.015),
            child: Column(
              children: [
                Text(
                  itemVava.title,
                  style: TextStyle(
                    fontFamily: "Valorant",
                    color: Colors.white,
                    fontSize: width1 * 0.037,
                  ),
                ),
                SizedBox(height: width1 * 0.03),
                Text(
                  "of the players",
                  style: TextStyle(
                    fontFamily: "Valorant",
                    color: Colors.white,
                    fontSize: width1 * 0.022,
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