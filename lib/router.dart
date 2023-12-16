

import 'package:flutter/material.dart';
import 'package:montechnicien/features/auth/screens/login_screen.dart';
import 'package:montechnicien/features/home/screens/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreen.routeName:
      return PageRouteBuilder(pageBuilder: (_, animation, __) {
        return FadeTransition(
          opacity: animation,
          child: const HomeScreen(),
        );
      });
    
     case LoginScreen.routeName:
      return PageRouteBuilder(pageBuilder: (_, animation, __) {
        return FadeTransition(
          opacity: animation,
          child: const LoginScreen(),
        );
      });

    
    default:
      return MaterialPageRoute(
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text("404"),
                ),
              ));
  }
}
