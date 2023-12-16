import 'package:flutter/material.dart';
import 'package:montechnicien/constants/color.dart';
import 'package:montechnicien/constants/padding.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
        color: Colors.black.withOpacity(0.2),
        child: Stack(
          children: [
            Positioned.fill(
                child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.black26,
              ),
            )),
            Positioned(
                top: size.height / 2 - (size.height * .5) / 2,
                left: 10,
                right: 10,
                child: Container(
                  // width: 100,
                  height: size.height * .5,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        width: size.width,
                        height: 50,
                        color: primary,
                        child: Center(
                          child: Text(
                            "CONNEXION",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}
