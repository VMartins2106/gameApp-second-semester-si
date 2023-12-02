import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:game_app/game_pages/introduction_pages/intro_cs.dart';
import 'package:game_app/game_pages/introduction_pages/intro_dota.dart';
import 'package:game_app/game_pages/introduction_pages/intro_lol.dart';
import 'package:game_app/game_pages/introduction_pages/intro_valorant.dart';
import 'package:game_app/helper/helper_functions.dart';
import 'package:game_app/home/people_page.dart';
import 'package:game_app/home/sidemenu.dart';
import 'package:game_app/home/topology_page.dart';
import 'package:game_app/widgets/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    gettingUserName();
  }

  String userName = "";

  gettingUserName() async {
    await HelperFunctions.getUserNameFromSF().then((val) {
      setState(() {
        userName = val!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    
    return Scaffold(
      floatingActionButton: SpeedDial(
        icon: Icons.gamepad_outlined,
        activeIcon: Icons.close,
        activeBackgroundColor: Colors.blue,
        backgroundColor: Colors.blue,
        spacing: height * 0.02,
        spaceBetweenChildren: height * 0.015,
        children: [
          SpeedDialChild(
            child: Image.asset("assets/images/icon/lol.png"),
            label: "League of Legens",
            onTap: () => nextScreen(context, const IntroLol()),
          ),
          SpeedDialChild(
            child: Image.asset("assets/images/icon/vava.png"),
            onTap: () => nextScreen(context, const IntroVava()),
            label: "Valorant",
          ),
          SpeedDialChild(
            child: Image.asset("assets/images/icon/dota.png"),
            onTap: () => nextScreen(context, const IntroDota()),
            label: "Dota 2",
          ),
          SpeedDialChild(
            child: Image.asset("assets/images/icon/cs.png"),
            onTap: () => nextScreen(context, const IntroCs()),
            label: "CS 2",
          ),
        ],
      ),
      drawer: const SideMenu(),
      appBar: AppBar(
        title: const Text('São Judas Gaming'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(161, 0, 63, 145), Color.fromARGB(167, 77, 234, 255)],
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    // AQUI
                    height: height * 1.68,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        opacity: 0.5,
                        image: NetworkImage(
                          'https://i.pinimg.com/564x/34/71/8a/34718ab9143164058038db6bfd1d3c3d.jpg',
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: height * 0.025
                          ),
                          child: Container(
                            height: height * 0.175,
                            width: width * 0.9,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(56)),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color.fromARGB(255, 0, 72, 167), Color.fromARGB(255, 0, 1, 39)],
                              ),
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(60),
                                      child:Image.asset(
                                        'assets/images/home/home1.jpg',
                                        height: height * 0.175,
                                        opacity: const AlwaysStoppedAnimation(.4)
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: width * 0.06,
                                            top: height * 0.05
                                          ),
                                          child: Image.asset(
                                            "assets/images/home/profile.png",
                                            height: height * 0.08,
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: height * 0.05,
                                            left: width * 0.04
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: width * 0.005
                                                ),
                                                child: Text(
                                                  "Bem vindo a SJG",
                                                  style: TextStyle(
                                                    color: const Color.fromARGB(218, 255, 255, 255),
                                                    fontSize: width * 0.03
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: height * 0.01,),
                                              Text("Olá, ${userName}",
                                                style: TextStyle(
                                                  color: const Color.fromARGB(255, 255, 255, 255),
                                                  fontSize: width * 0.07
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
                                height: height * 0.42,
                                width: width * 0.9,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(56)),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color.fromARGB(255, 0, 72, 167), Color.fromARGB(255, 0, 1, 39)],
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child:Image.asset(
                                  'assets/images/home/xinzao.jpg',
                                  height: height * 0.242,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: height * 0.26,
                                  right: width * 0.05
                                ),
                                child: Center(
                                  child: Text(
                                    "Entenda a topologia da rede da SJG",
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 255, 255, 255),
                                      fontSize: width * 0.05
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: height * 0.31,
                                  right: width * 0.05
                                ),
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
                                        Color.fromARGB(255, 13, 20, 121),
                                        Color.fromARGB(255, 0, 73, 168),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(32),
                                      ),
                                    ),
                                    child: MaterialButton(
                                      onPressed: () => nextScreen(context, const TopologyPage()),
                                      child: Text(
                                        "Descobrir",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width * 0.05,
                                          ),
                                        ),
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
                                    colors: [Color.fromARGB(255, 0, 72, 167), Color.fromARGB(255, 0, 1, 39)],
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child:Image.asset(
                                  'assets/images/home/cs.jpg',
                                  height: height * 0.24,
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
                                    "Você sabia que a SJG-USJT é a organização de E-sports mais bem preparada para o mercado? ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 255, 255, 255),
                                      fontSize: width * 0.05,
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
                                height: height * 0.27,
                                width: width * 0.9,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(56)),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color.fromARGB(255, 0, 72, 167), Color.fromARGB(255, 0, 1, 39)],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: width * 0.397
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child:Image.asset(
                                    'assets/images/home/neon.jpg',
                                    height: height * 0.27,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: height * 0.03,
                                  right: width * 0.55,
                                  left: width * 0.035
                                ),
                                child: Center(
                                  child: Text(
                                    "Nossa rede é arquitetada especificamente para o melhor desempenho e conforto para nossos atletas tecnológicos!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 255, 255, 255),
                                      fontSize: width * 0.045,
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
                                height: height * 0.42,
                                width: width * 0.9,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(56)),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color.fromARGB(255, 0, 72, 167), Color.fromARGB(255, 0, 1, 39)],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: height * 0.2
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child:Image.asset(
                                    'assets/images/home/zeri.jpg',
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
                                  child: Text(
                                    "Venha conhecer nossa logística empresarial!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 255, 255, 255),
                                      fontSize: width * 0.05
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: height * 0.1,
                                  right: width * 0.05
                                ),
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
                                        Color.fromARGB(255, 13, 20, 121),
                                        Color.fromARGB(255, 0, 73, 168),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(32),
                                      ),
                                    ),
                                    child: MaterialButton(
                                      onPressed: () => nextScreen(context, const PeoplePage()),
                                      child: Text(
                                        "Veja mais",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width * 0.05,
                                          ),
                                        ),
                                      ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
              ),
            ],
          ),
        ),
      )
    );
  }
}