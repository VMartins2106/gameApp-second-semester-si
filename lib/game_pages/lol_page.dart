import 'package:flutter/material.dart';

class LoLPage extends StatefulWidget {
  const LoLPage({super.key});

  @override
  State<LoLPage> createState() => _LoLPageState();
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

class LolItem{
  final String image;
  final String title;

  const LolItem({
    required this.image,
    required this.title,
  });
}

class _LoLPageState extends State<LoLPage> {

  List<CardItem> items = [
    const CardItem(
      urlImage: "assets/images/player_lol/robo.jpg",
      title: "Robo",
      subtitle: "\Top Laner"
    ),
    const CardItem(
      urlImage: "assets/images/player_lol/ranger.png",
      title: "Ranger",
      subtitle: "\Jungler"
    ),
    const CardItem(
      urlImage: "assets/images/player_lol/yoda.png",
      title: "YoDa",
      subtitle: "\Mid Laner"
    ),
    const CardItem(
      urlImage: "assets/images/player_lol/titan.jpg",
      title: "Titan",
      subtitle: "\ADC"
    ),
    const CardItem(
      urlImage: "assets/images/player_lol/redbert.jpg",
      title: "RedBert",
      subtitle: "\Suport"
    ),
  ];

  List<LolItem> itemsLol = [
    const LolItem(
      image: "assets/images/elo_lol/desafiante.png",
      title: "0.024%",
    ),
    const LolItem(
      image:"assets/images/elo_lol/grao_mestre.png",
      title: "0.063%",
    ),
    const LolItem(
      image: "assets/images/elo_lol/mestre.png",
      title: "0.36%",
    ),
    const LolItem(
      image: "assets/images/elo_lol/diamante.png",
      title: "2.7%",
    ),
    const LolItem(
      image: "assets/images/elo_lol/esmeralda.png",
      title: "8.6%",
    ),
    const LolItem(
      image: "assets/images/elo_lol/platina.png",
      title: "16%",
    ),
    const LolItem(
      image: "assets/images/elo_lol/ouro.png",
      title: "21%",
    ),
    const LolItem(
      image: "assets/images/elo_lol/prata.png",
      title: "21%",
    ),
    const LolItem(
      image: "assets/images/elo_lol/bronze.png",
      title: "20%",
    ),
    const LolItem(
      image: "assets/images/elo_lol/ferro.png",
      title: "8.7%",
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("League of Legends"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          width: width,
          height: height + (height * 0.20),
          child: Padding(
            padding: EdgeInsets.only(
              top: height * 0.1,
            ),
            child: Stack(
              children: <Widget>[
                Image.asset("assets/images/league1.jpg"),
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
                                      'League of Legends',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.05,
                                        fontFamily: 'FrizQuadrata',
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
                                        fontFamily: 'FrizQuadrata',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'PG - 12',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.03,
                                        fontFamily: 'FrizQuadrata',
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
                                    itemCount: 10,
                                    separatorBuilder: (context, _) => const SizedBox(width: 10),
                                    itemBuilder: (context, index) => iconLol(itemLol: itemsLol[index]),
                                  ),
                                ),
                                SizedBox(height: height * 0.035),
                                Text(
                                  "League of Legends é um jogo gratuito de MOBA distribuído pela Riot Games. Ele é disponibilizado para PC e foi inspirado no modo Defense of the Ancients de Warcraft III. Nele temos duas equipes de 5 campeões cada disputando uma vitória na batalha dentro do mapa do jogo.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    height: 1.1,
                                    color: Colors.white,
                                    fontFamily: 'FrizQuadrata',
                                    fontSize: width * 0.04,
                                    leadingDistribution: TextLeadingDistribution.even,
                                  ),
                                ),
                                SizedBox(height: height * 0.01),
                                Text(
                                  "São mais de 140 campeões com histórias diferentes. Seu critério de escolha pode ser ou pensando no seu estilo de jogo ou por se identificar mais com algum personagem. Afinal, são mais de 160 campeões você certamente irá encontrar o que você mais se divirta!",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    height: 1.1,
                                    color: Colors.white,
                                    fontFamily: 'FrizQuadrata',
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
                                    fontFamily: 'FrizQuadrata',
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
      ),
    );
  }

  Widget iconLol({
    required LolItem itemLol,
  }) => Container(
    width: width1 * 0.4,
    height: height1 * 0.06,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 107, 90, 255).withOpacity(0.3),
      borderRadius: const BorderRadius.all(Radius.circular(30))
    ),
    child: Padding(
      padding: EdgeInsets.all(width1 * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            itemLol.image,
            height: height1 * 0.07,
          ),
          Padding(
            padding: EdgeInsets.only(top: height1 * 0.015),
            child: Column(
              children: [
                Text(
                  itemLol.title,
                  style: TextStyle(
                    fontFamily: "FrizQuadrata",
                    color: Colors.white,
                    fontSize: width1 * 0.04,
                  ),
                ),
                SizedBox(height: width1 * 0.03),
                Text(
                  "of the players",
                  style: TextStyle(
                    fontFamily: "FrizQuadrata",
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