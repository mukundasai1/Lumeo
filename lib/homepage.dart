import 'package:flutter/material.dart';
import 'package:mobile/themedata.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: lightTheme, darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(extendBodyBehindAppBar: false,
          appBar: AppBar(title: Text("Lumeo"),),
          body: Text("Mukunda",style: TextStyle(fontSize: 20),),
          bottomNavigationBar: Text("Bottom Bar"),
        ),
      ),
    );
  }
}