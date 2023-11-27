import 'package:flutter/material.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({super.key});

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class CardItem{
  final String urlImage;
  final String title;
  final String text;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.text,
  });
}

class _PeoplePageState extends State<PeoplePage> {

  List<CardItem> itemLogo = [
    const CardItem(
      urlImage: "assets/images/logistica/sap.png",
      title: "SAP",
      text: "Suíte empresarial",
    ),
    const CardItem(
      urlImage: "assets/images/logistica/adobe.png",
      title: "ADOBE",
      text: "Ferramentas de design",
    ),
    const CardItem(
      urlImage: "assets/images/logistica/moba.png",
      title: "MobaXterm",
      text: "Gerenciamento remoto",
    ),
    const CardItem(
      urlImage: "assets/images/logistica/putty.png",
      title: "PUTTY",
      text: "Software de emulação",
    ),
    const CardItem(
      urlImage: "assets/images/logistica/git.png",
      title: "Github",
      text: "Versionamento",
    ),
    const CardItem(
      urlImage: "assets/images/logistica/ts.png",
      title: "TeamSpeak",
      text: "Comunicação",
    ),
    const CardItem(
      urlImage: "assets/images/logistica/sql.png",
      title: "SQL",
      text: "Banco de dados",
    ),
    const CardItem(
      urlImage: "assets/images/logistica/vs.png",
      title: "VSCode",
      text: "Editor de código",
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
          width: double.maxFinite,
          height: height,
          color: Colors.blue,
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.05,
                        left: width * 0.04,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: height * 0.035,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                      left: width * 0.15,
                    ),
                    child: Image.asset(
                      "assets/images/logo-nome.png",
                      height: height * 0.07,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                      right: width * 0.05,
                    ),
                    child: Image.asset(
                      "assets/images/justlogo.png",
                      height: height * 0.075,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: height * 0.14,
                height: height * 0.62,
                child: Container(
                  padding: EdgeInsets.only(
                    left: width * 0.1, 
                    right: width * 0.1,
                    top: height * 0.02,
                  ),
                  width: width,
                  height: height,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 230, 230, 230),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Quadro de funcionários",
                          style: TextStyle(
                            fontSize: width * 0.073,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: height * 0.03
                          ),
                          child: Text(
                            "A empresa opera com uma estrutura organizacional diversificada, composta por diferentes departamentos. O Recursos Humanos (RH) conta com 8 membros, o Desenvolvimento de Produto (DP) com 5, o Financeiro com 5, o Marketing com 4, o Comercial com 2, e setores como Audiovisual, Produção, TI e Jurídico têm 2, 20, 16 e 2 profissionais, respectivamente. Essa variedade reflete a abrangência das nossas operações e a especialização de equipes em áreas chaves.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: width * 0.045,
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/images/logistica/people.png",
                          height: height * 0.2,
                        ),
                      ]
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.6,
                ),
                child: Center(
                  child: Text(
                    "Tecnologias mais utilizadas pela SJG:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: width * 0.05,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.84,
                  left: width * 0.05,
                  bottom: width * 0.05,
                  right: width * 0.05,
                ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  separatorBuilder: (context, _) => const SizedBox(width: 10),
                  itemBuilder: (context, index) => iconLogo(itemLogo: itemLogo[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconLogo({
    required CardItem itemLogo,
  }) => Container(
    width: width1 * 0.63,
    height: height1 * 0.1,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    child: Padding(
      padding: EdgeInsets.all(width1 * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(top: height1 * 0.0238),
            child: Column(
              children: [
                Text(
                  itemLogo.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width1 * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: width1 * 0.025),
                Text(
                  itemLogo.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width1 * 0.035,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            itemLogo.urlImage,
            height: height1 * 0.08,
          ),
        ],
      ),
    ),
  );

}