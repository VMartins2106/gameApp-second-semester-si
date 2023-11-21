import 'package:flutter/material.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({super.key});

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {

  String email = '';

  /*Future passwordReset() async {
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);

      showSnackBar(context, Colors.green, "Link para mudança de senha enviada! Olhe seu email. (Pode ser que fique em spams!)");
      
    } on FirebaseAuthException catch(e){
      
      showSnackBar(context, Colors.red, e.message.toString());
      
    }
  }*/

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          height: height,
          color: Colors.blue,
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
                    left: width * 0.1, 
                    right: width * 0.1,
                    top: height * 0.07,
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
                      Image.asset(
                        "assets/images/neon.png",
                        height: height * 0.33,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.03, 
                          bottom: height * 0.03,
                        ),
                        child: const Text(
                          "Esqueceu sua senha?",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Text(
                        "Por favor, forneça o e-mail associado, e enviaremos um link com as instruções para a restauração da conta.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.05,
                          bottom: height * 0.07,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.email,
                            color: Colors.black,),
                            hintText: "email",
                            border: InputBorder.none
                          ),
                          onChanged: (val){
                            setState(() {
                              email = val;
                            });
                          },
                          validator: (val){
                            return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(val!) ? null : "Coloque um email válido";
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
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
                            child: const Text("Enviar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            onPressed: () {
                              //passwordReset();
                              Navigator.pop(context);
                            },
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
}