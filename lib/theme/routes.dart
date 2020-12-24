
import 'package:flutter/material.dart';
import 'package:firebaseauthentication/views/login.dart';
import 'package:firebaseauthentication/views/signup.dart';

class AppRoutes{

  AppRoutes._();

  static const String authLogin = "auth_login";
  static const String authRegister = "auth_register";

  static Map<String, WidgetBuilder>define(){
    return {
      authLogin: (context) => LoginScreen(),
      authRegister: (context) => Register()
  };
}



}

