// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onluyenapp/src/Source/dethi.dart';
import 'package:onluyenapp/src/Source/luyende.dart';
import 'package:onluyenapp/src/Source/setting.dart';
import 'package:onluyenapp/src/Source/trangchu.dart';

class Screen_page extends StatefulWidget {
  const Screen_page({super.key});

  @override
  State<Screen_page> createState() => _Screen_pageState();
}

class _Screen_pageState extends State<Screen_page> {
  int index = 0;
  final screen = [
    TrangChu(),
    LuyenDe(),
    Dethi_Page(),
    Setting_Page(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: screen[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          child: NavigationBar(
            height: 60,
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            // ignore: prefer_const_literals_to_create_immutables
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: "Trang Chủ",
              ),
              NavigationDestination(
                icon: Icon(Icons.school),
                label: "Luyện Đề",
              ),
              NavigationDestination(
                icon: Icon(Icons.school_rounded),
                label: "Đề Thi",
              ),
              NavigationDestination(
                icon: Icon(Icons.settings),
                label: "Cài đặt",
              ),
            ],
          ),
        ),
      );
}
