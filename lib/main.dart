import 'package:flutter/material.dart';
import 'package:onluyenapp/src/Source/LoginPage.dart';
import 'package:onluyenapp/src/Source/Succsess.dart';
import 'package:onluyenapp/src/Source/bailam.dart';
import 'package:onluyenapp/src/Source/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen_page(),
    );
  }
}
