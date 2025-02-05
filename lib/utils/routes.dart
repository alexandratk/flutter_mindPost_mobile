
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mindpost/ui/pages/login_page/login_page.dart';
import 'package:flutter_mindpost/ui/pages/main_page/main_page.dart';
import 'package:flutter_mindpost/ui/pages/main_page/screens/personal_notes_screen/add_note_page.dart';

import 'package:flutter_mindpost/ui/pages/registration_page/registartion_page.dart';
import 'package:flutter_mindpost/ui/pages/splash_page/scale_transition.dart';
import 'package:flutter_mindpost/ui/pages/splash_page/splash_screen.dart';

Route routes(RouteSettings routeSettings){
  if(routeSettings.name == '/') {
    return MaterialPageRoute(builder: (context) {
      return SplashScreen();
    });
  } else if(routeSettings.name == '/home_page') {
    var argument = routeSettings.arguments;
    return MaterialPageRoute(builder: (context) => argument == null? LoginPage():MainPage());
  } else if(routeSettings.name== '/login') {
    return ScaleRoute(
      page: MainPage()
    );
  } else if(routeSettings.name == '/signUp') {
    return ScaleRoute(
      page: RegistrationPage()
    );
  } else if(routeSettings.name == '/signIn') {
    return ScaleRoute(
        page: LoginPage()
    );
  } else if(routeSettings.name == '/addNote') {
    return ScaleRoute(
      page: AddNotePage()
    );
  }
  return null;
}