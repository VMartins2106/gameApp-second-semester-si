import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:game_app/game_pages/introduction_pages/intro_cs.dart';
import 'package:game_app/game_pages/introduction_pages/intro_dota.dart';
import 'package:game_app/game_pages/introduction_pages/intro_lol.dart';
import 'package:game_app/game_pages/introduction_pages/intro_valorant.dart';
import 'package:game_app/home/sidemenu.dart';
import 'package:game_app/widgets/widget.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({super.key});

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
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
      drawer: SideMenu(),
      appBar: AppBar(
        title: const Text('appbar'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: height * 0.07,
          width: width * 0.5,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3, 1],
              colors: [
              Color.fromARGB(255, 145, 185, 204),
              Color.fromARGB(255, 136, 226, 192),
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: MaterialButton(
            onPressed: (() {
                //login();
                Navigator.pop(context);
              }
            ),
            child: const Text("Sair",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),                          
          ),
        ),
      ),
    );
  }
}