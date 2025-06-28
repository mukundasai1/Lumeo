import 'package:flutter/material.dart';
import 'package:mobile/themedata.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            extendBodyBehindAppBar: false,
            body: Column(
              children: [SizedBox(height:60,),
              SizedBox(width: 250,child: LogoTheme() ),
              SizedBox(height:30,),
              Padding(padding: EdgeInsetsGeometry.fromLTRB(15, 0, 15, 0),child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter Full Name",prefixIcon: Icon(Icons.person_2_outlined,),
                      border: OutlineInputBorder(),
                    ),
                  ),),

                SizedBox(height:30,),
                Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter Email",prefixIcon: Icon(Icons.email_outlined,),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height:40,),
                Padding(padding: EdgeInsetsGeometry.fromLTRB(15, 0, 15, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter Password",prefixIcon: Icon(Icons.lock_outline,),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
