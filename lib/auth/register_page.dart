import 'package:flutter/material.dart';
import 'package:game_app/auth/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool _isLoading = false;
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String phone = "";
  String fullName = "";
  //AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: _isLoading
      ? const Center(child: CircularProgressIndicator(color: Colors.black))
      : SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          height: height,
          child: Stack(
            children: <Widget>[
              Image.asset("assets/images/homePNG.png",
              width: double.maxFinite,
              fit: BoxFit.fill,
              ),
              Positioned(
                top: height * 0.4,
                child: Container(
                  padding: EdgeInsets.only(
                    left: width * 0.1, 
                    right: width * 0.1, 
                    top: height * 0.07,
                  ),
                  width: width,
                  height: height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: height * 0.055),
                        child: Text(
                            "Venha ser o número 1 com a gente!",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.only(),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: height * 0.015),
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: const InputDecoration(
                                    icon:  Icon(Icons.person,
                                    color: Colors.black,),
                                    hintText: "Nome",
                                    border: InputBorder.none
                                  ),

                                  // Save the name
                                  onChanged: (val){
                                    setState(() {
                                      fullName = val;
                                    });
                                  },
                                  validator: (val){
                                    if(val!.length <= 2){
                                      return "O nome deve conter no mínimo 3 caracteres!";
                                    } else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: height * 0.015),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.email,
                                    color: Colors.black,),
                                    hintText: "email",
                                    border: InputBorder.none
                                  ),
                                  //Savind and checking the email
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
                                padding: EdgeInsets.only(bottom: height * 0.015),
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.password,
                                    color: Colors.black,),
                                    hintText: "senha",
                                    border: InputBorder.none
                                  ),
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
                              Padding(
                                padding: EdgeInsets.only(bottom: height * 0.015),
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.phone,
                                    color: Colors.black,),
                                    hintText: "Telefone",
                                    border: InputBorder.none
                                  ),
                                  onChanged: (val){
                                    setState(() {
                                      phone = val;
                                    });
                                  },
                                  validator: (val){
                                    if(val!.length <= 10){
                                      return "Telefone inválido";
                                    } else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: height * 0.05),
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
                                      child: Text("Cadastrar",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                      onPressed: (() {
                                        //register();
                                        Navigator.pop(context);
                                      }
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /*
  register() async {
    if(formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
        .registerUserWithEmailandPassword(fullName, email, password, phone)
        .then((value) async {
          if(value == true){
            // savind the shared preferences state

            await HelperFunctions.saveUserLoggedInStatus(true);
            await HelperFunctions.saveUserEmailSF(email);
            await HelperFunctions.saveUserNameSF(fullName);
            await HelperFunctions.saveUserPhoneSF(phone);

            showSnackBar(context, Colors.green, "Bem vindo $fullName");

            nextScreenReplace(context, const HomePage());

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