import 'package:flutter/material.dart';
import 'package:login_signup_ui/pages/LoginScreen.dart';

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: createMaterialColor(Color.fromARGB(255, 225, 234, 240)),  // Light grey color
      brightness: Brightness.light,
      hintColor: const Color.fromARGB(255, 209, 208, 206)
    ),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.grey[900],
    ),
    themeMode: ThemeMode.system,
  ));
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

