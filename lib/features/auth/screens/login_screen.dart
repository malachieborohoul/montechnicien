import 'package:flutter/material.dart';
import 'package:montechnicien/constants/color.dart';
import 'package:montechnicien/constants/padding.dart';
import 'package:montechnicien/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
        color: Colors.black.withOpacity(0.2),
        child: Stack(
          children: [
            Positioned.fill(
                child: GestureDetector(
              onTap: () {},
              child: Container(
                color: Colors.black26,
              ),
            )),
            Positioned(
                top: size.height / 2 - (size.height * .5) / 2,
                left: 10,
                right: 10,
                child: Form(
                  key: _loginFormKey,
                  child: Container(
                    // width: 100,
                    height: size.height * .5,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          width: size.width,
                          height: 50,
                          color: primary,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "CONNEXION",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                width: size.width * .85,
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.close_outlined,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                        const Text(
                          "Connectez-vous pour accéder à votre espace privé",
                          style: TextStyle(fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, right: 20.0, left: 20.0),
                          child: CustomTextfield(
                              controller: emailController,
                              hintText: "Adresse email"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, right: 20.0, left: 20.0),
                          child: CustomTextfield(
                              controller: passwordController,
                              hintText: "Mot de passe"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, right: 50.0, left: 50.0),
                          child: Container(
                            width: size.width,
                            height: 50,
                            decoration: BoxDecoration(
                                color: primary,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Center(
                              child: Text(
                                "CONNEXION",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
