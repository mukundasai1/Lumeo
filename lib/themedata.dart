import 'package:flutter/material.dart';

const textColor = Color(0xFFededed);
const backgroundColor = Color(0xFF4a88c9);
const primaryColor = Color.fromARGB(255, 3, 62, 212);
const primaryFgColor = Color.fromARGB(255, 13, 172, 212);
const secondaryColor = Color(0xFF300d03);
const secondaryFgColor = Color(0xFFededed);
const accentColor = Color.fromARGB(255, 4, 234, 134);
const accentFgColor = Color.fromARGB(255, 222, 193, 6);


final lightTheme = ThemeData(
primaryColor: backgroundColor,
appBarTheme: AppBarTheme(backgroundColor: primaryFgColor,foregroundColor: accentFgColor),
scaffoldBackgroundColor: secondaryFgColor,
);

final darkTheme = ThemeData(
primaryColor: backgroundColor,
appBarTheme: AppBarTheme(backgroundColor: primaryColor,foregroundColor: accentColor),
scaffoldBackgroundColor: secondaryColor,

);


  
class LogoTheme extends StatelessWidget {
  const LogoTheme({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final imagepath = isDark ? 'assets/Lumeo_dark.png' : 'assets/Lumeo_light.png';
    return Image.asset(imagepath);
  }
}