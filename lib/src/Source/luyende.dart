import 'package:flutter/material.dart';
import 'package:onluyenapp/src/Source/HienThiKQ.dart';
import 'package:onluyenapp/src/Source/bailam.dart';

class LuyenDe extends StatelessWidget {
  LuyenDe({super.key});
  List<Station> stations = [
    Station(1, 'Đề 1', '50 Câu'),
    Station(2, 'Đề 2', '50 Câu'),
    Station(3, 'Đề 3', '50 Câu'),
    Station(4, 'Đề 4', '50 Câu'),
    Station(5, 'Đề 5', '50 Câu'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text(
        'Luyện Đề',
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
                  trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HienThiKQ_Page(),
                            ),
                          ),
                      child: Text('Xem Lại')),
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
