import 'package:flutter/material.dart';
import 'package:game_app/game_pages/cs_page.dart';
import 'package:game_app/game_pages/dota_page.dart';
import 'package:game_app/game_pages/home_page.dart';
import 'package:game_app/game_pages/lol_page.dart';
import 'package:game_app/game_pages/vava_page.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {

  List<ScreenHiddenDrawer> _pages = [];

  String imagem = 'assets/images/homePNG.png';
  Color appBarColor = Colors.deepPurple;

  final myTextStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white

  );

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Home",
          baseStyle: myTextStyle, 
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.white,          
          onTap: () {
            setState(() {
              imagem = "assets/images/homePNG.png";
              appBarColor = Colors.deepPurple;
            });
          }
        ),
        const HomePage()
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Counte Strike 2", 
          baseStyle: myTextStyle, 
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.white,          
          onTap: () {
            setState(() {
              imagem = "assets/images/cs.jpg";
              appBarColor = const Color.fromARGB(255, 73, 47, 38);
            });
          }
        ),
        const CSPage()
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "League of Legends", 
          baseStyle: myTextStyle, 
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.white, //barra lateral
          onTap: () {
            setState(() {
              imagem = "assets/images/lol.jpg";
              appBarColor = Colors.deepPurple;
            });
          }
        ),
        const LoLPage()
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Valorant", 
          baseStyle: myTextStyle, 
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.white, //barra lateral
          onTap: () {
            setState(() {
              imagem = "assets/images/vava.jpg";
              appBarColor = Colors.blue;
            });
          }
        ),
        const VavaPage()
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Dota 2", 
          baseStyle: myTextStyle, 
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.white, //barra lateral
          onTap: () {
            setState(() {
              imagem = "assets/images/dota.jpg";
              appBarColor = const Color.fromARGB(255, 27, 80, 22);
            });
          }
        ),
        const DotaPage()
      ),      
    ];
  }

  @override
  Widget build(BuildContext context) {

    return HiddenDrawerMenu(
      backgroundColorAppBar: appBarColor,
      isTitleCentered: true,
      isDraggable: true,
      withShadow: true,
      backgroundMenu: DecorationImage(image: ExactAssetImage(imagem),fit: BoxFit.fill),
      backgroundColorMenu: Colors.deepPurple.shade100,
      screens: _pages,
      //slidePercent: 50,
      enableScaleAnimation: true,
      initPositionSelected: 0,
      contentCornerRadius: 60,
      
    );
  }
}