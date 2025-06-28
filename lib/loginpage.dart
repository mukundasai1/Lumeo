import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile/themedata.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isloading = false;
  String? errorMessage;

  Future<void> login() async {
    setState(() {
      isloading = true;
      errorMessage = null;
    });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim(),);
      SnackBar(content: Text("Logged in Successfully"),);
    } on FirebaseAuthException catch (e) {
      setState(() => errorMessage = e.message);
    } finally {
      setState(() {
        isloading = false;
      });
    }
  }
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
                SizedBox(height:100,),
                Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: TextField(keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Enter Email",prefixIcon: Icon(Icons.email_outlined,),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height:40,),
                Padding(padding: EdgeInsetsGeometry.fromLTRB(15, 0, 15, 0),
                  child: TextField(obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Enter Password",prefixIcon: Icon(Icons.lock_outline,),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height:40,),
                ElevatedButton(onPressed: isloading?null:login, child: isloading?CircularProgressIndicator(color: Colors.white,):const Text("Login")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}