// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Dethi_Page extends StatelessWidget {
  Dethi_Page({super.key});
  List<Station> stations = [
    Station(1, 'Đề thi số 1', '90 phút', '50 câu'),
    Station(2, 'Đề thi số 2', '90 phút', '50 câu'),
    Station(3, 'Đề thi số 3', '90 phút', '50 câu'),
    Station(4, 'Đề thi số 4', '90 phút', '50 câu'),
    Station(5, 'Đề thi số 5', '90 phút', '50 câu'),
    Station(6, 'Đề thi số 6', '90 phút', '50 câu'),
    Station(7, 'Đề thi số 7', '90 phút', '50 câu'),
    Station(8, 'Đề thi số 8', '90 phút', '50 câu'),
    Station(9, 'Đề thi số 9', '90 phút', '50 câu'),
    Station(10, 'Đề thi số 10', '90 phút', '50 câu'),
    Station(11, 'Đề thi số 11', '90 phút', '50 câu'),
    Station(12, 'Đề thi số 12', '90 phút', '50 câu'),
    Station(13, 'Đề thi số 13', '90 phút', '50 câu'),
    Station(14, 'Đề thi số 14', '90 phút', '50 câu'),
    Station(15, 'Đề thi số 15', '90 phút', '50 câu'),
    Station(16, 'Đề thi số 16', '90 phút', '50 câu'),
    Station(17, 'Đề thi số 17', '90 phút', '50 câu'),
    Station(18, 'Đề thi số 18', '90 phút', '50 câu'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Đề thi thử',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            child: ListView.builder(
              itemCount: stations.length,
              itemBuilder: (context, index) {
                final item = stations[index];
                return ListTile(
                  leading: Text(item.name),
                  title: Text(item.time),
                  subtitle: Text(item.question),
                  trailing:
                      ElevatedButton(onPressed: () {}, child: Text('Làm bài')),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Station {
  int id;
  String name;
  String time;
  String question;
  Station(this.id, this.name, this.time, this.question);
}
