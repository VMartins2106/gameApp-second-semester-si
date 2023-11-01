import 'package:flutter/material.dart';
import 'package:game_app/game_pages/cs_page.dart';
import 'package:game_app/game_pages/vava_page.dart';
import 'package:get/get.dart';

class IntroVava extends StatefulWidget {
  const IntroVava({super.key});

  @override
  State<IntroVava> createState() => _IntroVavaState();
}

class _IntroVavaState extends State<IntroVava> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1, 0.5],
                colors: [
                  Color.fromARGB(255, 0, 91, 196),
                  Color.fromARGB(143, 64, 177, 177),
                  ],
                ),
              ),
              width: width,
              height: height,
              child: Padding(
                padding: EdgeInsets.only(
                  top: height * 0.065,
                  left: width * 0.045,
                  right: width * 0.045,
                  bottom: height * 0.04
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.1, 0.5],
                      colors: [
                      Color.fromARGB(255, 0, 48, 100),
                      Color.fromARGB(255, 0, 0, 0),
                      ],
                    ),
                  ),
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: width * 0.06,
                              top: height * 0.05
                            ),
                            child: Image.asset(
                              "assets/images/valorant/profile.png",
                              height: height * 0.08,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: height * 0.055,
                              left: width * 0.03
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Feliz em vê-lo novamente",
                                  style: TextStyle(
                                    color: const Color.fromARGB(174, 255, 255, 255),
                                    fontSize: width * 0.03
                                  ),
                                ),
                                SizedBox(height: height * 0.01,),
                                Text(
                                  "Olá, Victor",
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                    fontSize: width * 0.07
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: width * 0.07),
                          Padding(
                            padding: EdgeInsets.only(
                              top: height * 0.06,
                              left: width * 0.06
                            ),
                            child: IconButton(
                              iconSize: width * 0.07,
                              color: Colors.white,
                              onPressed: () => 
                              Navigator.pop(context), 
                              icon: Icon(Icons.close),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Padding(
                        padding: EdgeInsets.only(
                          right: width * 0.53
                        ),
                        child: Text(
                          "Vamos explorar",
                          style: TextStyle(
                            color: const Color.fromARGB(174, 255, 255, 255),
                            fontSize: width * 0.035
                                    // AQUI
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      Container(
                        height: height * 0.6,
                        width: width * 0.85,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.1, 0.5],
                            colors: [
                            Color.fromARGB(255, 0, 91, 196),
                            Color.fromARGB(255, 68, 230, 230),
                            ],
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: width * 0.05,
                              top: height * 0.03,
                              child: Image.asset(
                                "assets/images/valorant/logovalorant.png",
                                height: height * 0.05,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ),
            Positioned(
              //left: 0.05,
              right: 0.12,
              top: height * 0.27,
              child: Image.asset(
                "assets/images/valorant/v3.png",
                height: height * 0.7,
              ),
            ),
            Positioned(
              right: width * 0.2,
              top: height * 0.559,
              child: Image.asset(
                "assets/images/valorant/v1.png",
                height: height * 0.4,
              ),
            ),
            Positioned(
              left: width * 0.28,
              top: height * 0.5,
              child: Image.asset(
                "assets/images/valorant/v2.png",
                height: height * 0.4,
              ),
            ),            
            Positioned(
              top: height * 0.85,
              left: width * 0.12,
              child: Container(
                height: height * 0.085,
                width: width * 0.75,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                    Color.fromARGB(190, 0, 92, 196),
                    Color.fromARGB(181, 68, 230, 230),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(32),
                  ),
                ),
                child: MaterialButton(
                  onPressed: (() {}),              
                ),
              ),
            ),
            Positioned(
              top: height * 0.86,
              left: width * 0.12,
              child: Container(
                height: height * 0.085,
                width: width * 0.75,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                    Color.fromARGB(82, 0, 92, 196),
                    Color.fromARGB(47, 68, 230, 230),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x00000000).withOpacity(1),
                      offset: const Offset(0, 0),
                      blurRadius: 20,
                      spreadRadius: 4,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32),
                  ),
                ),
                child: MaterialButton(
                  onPressed: (() {}),              
                ),
              ),
            ),
            Positioned(
              top: height * 0.84,
              left: width * 0.12,
              child: Container(
                height: height * 0.085,
                width: width * 0.75,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                    Color.fromARGB(255, 0, 91, 196),
                    Color.fromARGB(255, 68, 230, 230),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x00000000).withOpacity(1),
                      offset: const Offset(0, 0),
                      blurRadius: 20,
                      spreadRadius: 4,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32),
                  ),
                ),
                child: MaterialButton(
                  onPressed: (() => Get.to(
                    () => const VavaPage(), 
                      transition: Transition.rightToLeft, 
                      duration: const Duration(seconds: 1),
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.015
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Valorant",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.06,
                              ),
                            ),
                            Text("Saiba mais",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.04,
                              ),
                            ),
                          ],   
                        ),
                      ),
                      IconButton(
                        color: Colors.white,
                        onPressed: (){
                          Get.to(
                          () => const VavaPage(), 
                            transition: Transition.rightToLeft, 
                            duration: const Duration(seconds: 1),
                          );
                        }, 
                        icon: const Icon(Icons.arrow_forward),
                        iconSize: width * 0.08,
                      ),
                    ],
                  )                    
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
Get.to(
  () => const VavaPage(), 
  transition: Transition.rightToLeft, 
  duration: const Duration(seconds: 1),
);
*/