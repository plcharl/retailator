import 'package:flutter/material.dart';
import 'package:retailator/home_page.dart';


///Classe decrivant les routes de l'application
///1: declaration de la route dans generateRoute
///2: utilisation des routes dans les Widget via Navigator.pushNamed(nom_route)
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Recuperation des arguments passés lors de l'appel a Navigator.pushNamed
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (buildContext) => MyHomePage(title: 'Retailator'));
        //Il faut toujours s'assurer que les arguments transmis aux routes soient du bon type : il faut mettre une verification dans le RouteGenerator
      case '/page':
        //Verification du type des argument puis transmission de l'arg
        if (args is String) {
          return MaterialPageRoute(builder: (buildContext) => MyHomePage(/* transmettre arg */));
        }
        return _errorRoute();
      default: _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (builder){
      return Scaffold(
        appBar: AppBar(
          title: Text("Routing Error")
        ),
        body: Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}