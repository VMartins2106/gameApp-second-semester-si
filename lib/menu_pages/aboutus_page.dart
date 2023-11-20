import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.5],
            colors: [
              Colors.blue,
              Color.fromARGB(255, 142, 219, 255),
              ],
            ),
          ),
          width: double.maxFinite,
          height: height,
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                      left: width * 0.02,
                    ),
                    child: Image.asset(
                      "assets/images/logo-nome.png",
                      height: height * 0.06,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                      right: width * 0.05,
                    ),
                    child: Image.asset(
                      "assets/images/justlogo.png",
                      height: height * 0.065,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.12,
                ),
                child: Image.asset("assets/images/sobre.png",
                ),
              ),
              Positioned(
                top: height * 0.55,
                child: Container(
                  padding: EdgeInsets.only(
                    left: width * 0.1, 
                    right: width * 0.1, 
                    top: height * 0.04,
                  ),
                  width: width,
                  height: height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: height * 0.02),
                        child: Text(
                            "Sobre nós",
                            style: TextStyle(
                              fontSize: width * 0.085,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.023),
                        child: Text(
                            "Este trabalho foi elaborado por alunos da Universidade São Judas Tadeu e desenvolvido por Victor Martins como parte do projeto acadêmico, com o objetivo de aprimorar suas habilidades no desenvolvimento mobile.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: width * 0.045,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.045),
                        child: Center(
                          child: Container(
                            height: height * 0.08,
                            width: width * 0.8,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.3, 1],
                                colors: [
                                Color.fromARGB(160, 48, 150, 190),
                                Color.fromARGB(255, 48, 111, 192),
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(32),
                              ),
                            ),
                            child: MaterialButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                "Voltar",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.05,
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}