import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Getdulieu extends StatelessWidget {
  final String documentid;

  Getdulieu({required this.documentid});

  @override
  Widget build(BuildContext context) {
    CollectionReference dulieu =
        FirebaseFirestore.instance.collection('dulieu');
    return FutureBuilder<DocumentSnapshot>(
      future: dulieu.doc(documentid).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 5, top: 13),
                    child: Text(
                      '${data['Answers']}',
                      style: const TextStyle(
                          color: Colors.black12,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.only(right: 5, top: 10),
                child: Text(
                  '${data['result']}',
                  style: const TextStyle(
                      color: Colors.cyan,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ))
            ],
          );
        }
        return Text('Loading...');
      }),
    );
  }
}
