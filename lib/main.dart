import 'package:flutter/material.dart';
import 'package:tictctoe/ui/home.dart';
import 'package:tictctoe/ui/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:Splash(),
    );
  }
}

