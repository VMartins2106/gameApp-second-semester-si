import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Drawer(
      width: width * 0.8,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(80),
            bottomRight: Radius.circular(80),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 0, 86, 199), Color.fromARGB(255, 0, 1, 39)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.03,),
            Stack(
              children: [
                Image.asset('assets/images/globo.png'),                
                Padding(
                  padding:EdgeInsets.only(
                    left: width * 0.1,
                    top: height * 0.06
                  ),
                  child: Image.asset(
                    'assets/images/profile-icon.png',
                    height: height * 0.26,
                  ),
                ),    
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.01,
                left: width * 0.04
              ),
              child: Text("User name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.03,
                left: width * 0.04
              ),
              child: Text("User email@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.025,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.05,
              ),
              child: Container(
                height: height * 0.001,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.04,
                top: height * 0.04
              ),
              child: GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  width: width * 0.55,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * 0.02
                        ),
                        child: Icon(
                          Icons.person_2_rounded,
                          color: Colors.white,
                          size: height * 0.05,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Text("Meu perfil",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.025,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.04,
                top: height * 0.04
              ),
              child: GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  width: width * 0.55,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * 0.02
                        ),
                        child: Icon(
                          Icons.info_outline_rounded,
                          color: Colors.white,
                          size: height * 0.05,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Text("Sobre nós",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.025,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.04,
                top: height * 0.04
              ),
              child: GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  width: width * 0.55,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * 0.02
                        ),
                        child: Icon(
                          Icons.slideshow_outlined,
                          color: Colors.white,
                          size: height * 0.05,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Text("Expo show",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.025,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.04,
                top: height * 0.06
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Container(
                  width: width * 0.55,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * 0.02
                        ),
                        child: Icon(
                          Icons.logout_outlined,
                          color: Colors.red,
                          size: height * 0.05,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Text("Sair",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: height * 0.025,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}