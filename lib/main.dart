import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:onluyenapp/src/Source/LoginPage.dart';
// import 'package:onluyenapp/src/Source/Succsess.dart';
// import 'package:onluyenapp/src/Source/bailam.dart';
// import 'package:onluyenapp/src/Source/luyende.dart';
// import 'package:onluyenapp/src/Source/screen.dart';
// import 'package:onluyenapp/src/Source/trangchu.dart';
import 'package:onluyenapp/main_page.dart';

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
      home: Mainpage(),
    );
  }
}
