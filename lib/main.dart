import 'package:flutter/material.dart';
import 'package:flutter_application_15/homepage.dart';
import 'package:flutter_application_15/theme.dart';

import 'package:flutter_application_15/welcome.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      home: const WelcomeScreen(),
      routes: {
        'homepage': (context) => HomePage(),
      },
    );
  }
}
