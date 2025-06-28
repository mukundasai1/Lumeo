import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile/loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Lumeo());
}

class Lumeo extends StatelessWidget {
  const Lumeo({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
