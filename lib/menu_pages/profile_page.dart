import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_app/auth/login_page.dart';
import 'package:game_app/helper/helper_functions.dart';
import 'package:game_app/service/database_service.dart';
import 'package:game_app/widgets/widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
    void initState() {
      super.initState();
      gettingUserData();
  }

  String userName = "";
  String email = "";
  String phone = "";

  bool boolName = true;
  bool boolPhone = true;

  String newName = "";
  String newPhone = "";

  final formKey = GlobalKey<FormState>();

  gettingUserData() async {
    await HelperFunctions.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunctions.getUserNameFromSF().then((val) {
      setState(() {
        userName = val!;
      });
    });
    await HelperFunctions.getUserPhoneFromSF().then((val) {
      setState(() {
        phone = val!;
      });
    });
  }

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
                child: Container(
                  padding: EdgeInsets.only(
                    left: width * 0.08, 
                    right: width * 0.1,
                    top: height * 0.06,
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
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/images/globo.png",
                              height: height * 0.3,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: width * 0.08,
                                top: height * 0.045
                              ),
                              child: Image.asset(
                                "assets/images/profile-icon.png",
                                height: height * 0.23,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.03,
                          bottom: height * 0.07,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: width * 0
                          ),
                          child: Form(
                            key: formKey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: height * 0.015),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      enabled: false,
                                      hintText: userName,
                                      icon:  const Icon(Icons.person,
                                      color: Colors.black),
                                      enabledBorder: const UnderlineInputBorder (
                                        borderSide: BorderSide(
                                          width: 2, color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(width: 3, color: Color.fromARGB(255, 15, 98, 153)),
                                      ),
                                    ),
                                    onChanged: (val){
                                      setState(() {
                                        if(val.isEmpty){
                                          boolName = true;
                                        } 
                                        if(val.isNotEmpty){
                                          boolName = false;
                                        }
                                        newName = val;
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: height * 0.015),
                                  child: TextFormField(
                                    enabled: false,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: email,
                                      icon: const Icon(Icons.email,
                                      color: Colors.black),
                                      enabledBorder: const UnderlineInputBorder (
                                        borderSide: BorderSide(
                                          width: 2, color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(width: 3, color: Color.fromARGB(255, 15, 98, 153)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: height * 0.015),
                                  child: TextFormField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      label: Text(boolPhone ? phone : newPhone),
                                      icon: const Icon(
                                        Icons.phone,
                                        color: Colors.black
                                      ),
                                      enabledBorder: const UnderlineInputBorder (
                                        borderSide: BorderSide(
                                          width: 2, color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(width: 3, color: Color.fromARGB(255, 15, 98, 153)),
                                      ),
                                    ),
                                    onChanged: (val){
                                      setState(() {
                                        if(val.isEmpty){
                                          boolPhone = true;
                                        } 
                                        if(val.isNotEmpty){
                                          boolPhone = false;
                                        }
                                        newPhone = val;
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: height * 0.03),
                                  child: Container(
                                      height: height * 0.07,
                                      width: double.maxFinite,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          stops: [0.3, 1],
                                          colors: [
                                          Color.fromARGB(132, 76, 169, 206),
                                          Color.fromARGB(255, 48, 111, 192),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(32),
                                        ),
                                      ),
                                      child: MaterialButton(
                                        onPressed: () {
                                          saveData();
                                        },
                                        child: Text("Salvar",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width * 0.045,
                                          ),
                                        ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: height * 0.04),
                                  child: Container(
                                      height: height * 0.07,
                                      width: double.maxFinite,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          stops: [0.3, 1],
                                          colors: [
                                          Color.fromARGB(132, 76, 169, 206),
                                          Color.fromARGB(255, 48, 111, 192),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(32),
                                        ),
                                      ),
                                      child: MaterialButton(
                                        onPressed: (() {
                                          Navigator.pop(context);
                                        }
                                        ),
                                        child: Text("Voltar",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width * 0.045,
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  saveData() async{

    final uid = FirebaseAuth.instance.currentUser!.uid;

    if(formKey.currentState!.validate()) {
      /*if(newName.isNotEmpty && newPhone.isEmpty){
        // JUST NAME
        HelperFunctions.saveUserNameSF(newName);
        DatabaseService(uid: uid).updatingUserDataN(newName);
        showSnackBar(context, Colors.green, "Dados alterados com sucesso!");
        setState() {
          userName = newName;
        }
      } else */if(newName.isEmpty && newPhone.isNotEmpty){
        // JUST PHONE
        HelperFunctions.saveUserPhoneSF(newPhone);
        DatabaseService(uid: uid).updatingUserDataP(newPhone);
        showSnackBar(context, Colors.green, "Dados alterados com sucesso!");
        setState() {
          phone = newPhone;
        } 
      } /*else if(newName.isNotEmpty && newPhone.isNotEmpty){
        // NAME, PHONE
        HelperFunctions.saveUserNameSF(newName);
        HelperFunctions.saveUserPhoneSF(newPhone);
        DatabaseService(uid: uid).updatingUserDataNP(newName, newPhone);
        showSnackBar(context, Colors.green, "Dados alterados com sucesso!");
        setState() {
          userName = newName;
          phone = newPhone;
        }
      } */else if (newName.isEmpty && newPhone.isEmpty){
        showSnackBar(context, Colors.red, "Algum erro ocorreu, tente novamente!");
      }

    } else{
      showSnackBar(context, Colors.red, "Algum erro ocorreu, tente novamente!");
    }
  }

}