import 'package:flutter/material.dart';

class TopologyPage extends StatefulWidget {
  const TopologyPage({super.key});

  @override
  State<TopologyPage> createState() => _TopologyPageState();
}

class _TopologyPageState extends State<TopologyPage> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
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
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.02,
                  left: width * 0.05
                ),
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.5,
                      width: width * 0.9,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(56)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.white],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.03,
                        right: width * 0.06,
                        left: width * 0.02
                      ),
                      child: Center(
                        child: Text(
                          "Topologia da rede da SJG",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.07,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.1,
                        right: width * 0.06,
                        left: width * 0.02
                      ),
                      child: Center(
                        child: Text(
                          "Um ambiente de rede usando o protocolo TCP/IP com uma conexão onde os blocos de endereços IP são usados para separar áreas e departamentos.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.05,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.25,
                        right: width * 0.06,
                        left: width * 0.02
                      ),
                      child: Image.asset("assets/images/redes/globo.png"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.02,
                  left: width * 0.05
                ),
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.27,
                      width: width * 0.9,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(56)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.white],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: width * 0.35
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child:Image.asset(
                          'assets/images/redes/tcp.png',
                          height: height * 0.27,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.04,
                        right: width * 0.55,
                        left: width * 0.035
                      ),
                      child: Center(
                        child: Text(
                          "Os endereços IP são identificadores únicos atribuidos para dispositivos em uma rede para possibilitar a comunicação. No nosso caso, em três blocos principais: 192.168.10, 192.168.20, 192.168.30.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.035,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.02,
                  left: width * 0.05
                ),
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.24,
                      width: width * 0.9,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(56)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.white],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.05,
                        left: width * 0.02
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child:Image.asset(
                          'assets/images/redes/wifi.png',
                          height: height * 0.15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.04,
                        right: width * 0.09,
                        left: width * 0.46
                      ),
                      child: Center(
                        child: Text(
                          "Eles seguem um padrão para o departamento, com um número do PC anexado ao bloco principal. Por exemplo, em um departamento associado ao bloco 192.168.10, o endereço IP seria 192.168.10.x, onde X é o número que representa o PC.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.031,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.02,
                  left: width * 0.05
                ),
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.5,
                      width: width * 0.9,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(56)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.white],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.24
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child:Image.asset(
                          'assets/images/redes/planta.jpg',
                          height: height * 0.242,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.03,
                        right: width * 0.05
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: width * 0.05,
                            right: width * 0.04,
                          ),
                          child: Text(
                            "Para ilustrar com exemplos práticos: \n\n • Um dispositivo no departamento 1 pode ter o endereçamento IP 192.168.10.1. \n • Um dispositivo no departamento 2 pode ter o endereçamento IP 192.168.20.1. \n • Um dispositivo no departamento 3 pode ter o endereçamento IP 192.168.30.1.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.043
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}