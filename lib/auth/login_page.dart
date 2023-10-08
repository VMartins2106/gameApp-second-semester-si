import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:game_app/auth/recover_password_page.dart';
import 'package:game_app/auth/register_page.dart';
import 'package:game_app/game_pages/hidden_drawer.dart';
import 'package:game_app/game_pages/home_page.dart';
import 'package:game_app/widgets/widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool _isLoading = false;
  //AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: _isLoading 
      ? const Center(child: CircularProgressIndicator(color: Colors.black))
      : SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          height: height,
          child: Stack(
            children: <Widget>[
              Image.asset("assets/images/login.jpg",
              ),
              Positioned(
                top: height * 0.378,
                child: Container(
                  padding: EdgeInsets.only(
                    left: width * 0.08,
                    right: width * 0.1,
                    top: height * 0.18,
                  ),
                  width: width,
                  height: height,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 230, 230, 230),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: height * 0.02),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: width * 0.015),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.email,color: Colors.black),
                                      hintText: "Email",
                                      hintStyle: TextStyle(fontSize: 16),
                                      border: InputBorder.none
                                    ),

                                    // Save the data
                                    onChanged: (val){
                                      setState(() {
                                        email = val;
                                      });
                                    },

                                    // check the validation
                                    validator: (val){
                                      return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(val!) ? null : "Coloque um email válido";
                                    },
                                  ),
                                ),
                                Padding(
                                padding: EdgeInsets.only(
                                  top: height * 0.007,
                                  bottom: height * 0.007,
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.password,
                                    color: Colors.black,),
                                    hintText: "Senha",
                                    hintStyle: TextStyle(fontSize: 16),
                                    //suffixIcon: Icon(Icons.remove_red_eye),
                                    border: InputBorder.none
                                  ),

                                  // Save the data
                                  onChanged: (val){
                                    setState(() {
                                      password = val;
                                    });
                                  },
                                  validator: (val){
                                    if(val!.length < 6){
                                      return "A senha deve ter no mínimo 6 caracteres";
                                      } else{
                                      return null;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: width * 0.35, 
                            bottom: height * 0.11, 
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Esqueceu sua senha?',
                                  style: const TextStyle(color: Colors.blueGrey),
                                  recognizer: TapGestureRecognizer()
                                  ..onTap = () { 
                                    nextScreen(context, const RecoverPassword());
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: width * 0.05),
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
                              child: Text("Entrar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              onPressed: (() {
                                  //login();
                                  nextScreenReplace(context, const HiddenDrawer());
                                }
                              ),                          
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Ainda não tem conta? ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: 'Cadastrar',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                  ..onTap = () { 
                                    nextScreen(context, const RegisterPage());
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.15,
                    right: width * 0.15,
                    bottom: height * 0.06,
                  ),
                  child: Text(
                    "NOME DA EMPRESA (CUSTOMIZAR CORES E FONTES)"
                  )
                ),
              ),
            ],    
          ),
        ),
      ),
    );
  }

  /*login() async {
    if(formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
        .loginWithUserEmailandPassword(email, password)
        .then((value) async {
          if(value == true){
            // savind the shared preferences state

            QuerySnapshot snapshot = await DatabaseService(
              uid: FirebaseAuth.instance.currentUser!.uid)
                .gettingUserData(email);

            // saving the values to out SHARED PREFERENCES

            await HelperFunctions.saveUserLoggedInStatus(true);
            await HelperFunctions.saveUserEmailSF(email);
            await HelperFunctions.saveUserNameSF(snapshot.docs[0]['fullName']);
            await HelperFunctions.saveUserPhoneSF(snapshot.docs[0]['phone']);

            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const HomePage()), 
              (route) => false);

          }
          else{
            showSnackBar(context, Colors.red, value);
            setState(() {
              _isLoading = false;
            });
          }
        });
    }
  }*/

}