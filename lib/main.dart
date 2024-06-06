import 'package:flutter/material.dart';
import 'package:login_signup_ui/pages/LoginScreen.dart';

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
      brightness: Brightness.light,
    ),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.grey[900],
    ),
    themeMode: ThemeMode.system,
  ));
}
