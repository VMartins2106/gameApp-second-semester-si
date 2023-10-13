import 'package:flutter/material.dart';
import 'package:game_app/widgets/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 0),
          child: Container(
            height: height * 0.07,
            width: double.maxFinite,
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
              child: Text("Sair",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              onPressed: (() {
                  //login();
                  Navigator.pop(context);
                }
              ),                          
            ),
          ),
        ),
      ),
    );
  }
}