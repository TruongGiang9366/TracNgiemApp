import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:onluyenapp/src/Source/HienThiKQ.dart';
import 'package:onluyenapp/src/Source/bailamOnline.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:onluyenapp/src/get/getdulieu.dart';

class LuyenDe extends StatelessWidget {
  LuyenDe({super.key});
  List<Station> stations = [
    Station(1, 'Đề thi số 1', '10 câu'),
    Station(2, 'Đề thi số 2', '15 câu'),
    Station(3, 'Đề thi số 3', '20 câu'),
    Station(4, 'Đề thi số 4', '25 câu'),
    Station(5, 'Đề thi số 5', '30 câu'),
  ];

  @override
  //await FirebaseAuth.instance.SingleActivator
  List<String> docIDs = [];

// get docIDs
  Future getDocId() async {
    await FirebaseFirestore.instance.collection('thithu').get().then(
          (snapshot) => snapshot.docs.forEach(
            (document) {
              print(document.reference.id);
              docIDs.add(document.reference.id);
            },
          ),
        );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text(
        'Luyện Đề ',
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                  title: Text(item.question),
                  subtitle: ElevatedButton(
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BaiLam_Page(),
                            ),
                          ),
                      child: Text('Làm bài')),
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
  String question;
  Station(this.id, this.name, this.question);
}
