// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_app/auth/login_page.dart';
import 'package:game_app/game_pages/lol_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}