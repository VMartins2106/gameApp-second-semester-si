// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_app/hidden_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HiddenDrawer(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}