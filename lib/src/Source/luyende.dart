import 'package:flutter/material.dart';

class LuyenDe extends StatelessWidget {
  LuyenDe({super.key});
  List<Station> stations = [
    Station(1, 'Cấp độ 1', '10 Câu'),
    Station(2, 'Cấp độ 2', '20 Câu'),
    Station(3, 'Cấp độ 3', '30 Câu'),
    Station(4, 'Cấp độ 4', '40 Câu'),
    Station(5, 'Cấp độ 5', '50 Câu'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Luyện Đề',
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
                  title: Text(item.question),
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
  String question;
  Station(this.id, this.name, this.question);
}
