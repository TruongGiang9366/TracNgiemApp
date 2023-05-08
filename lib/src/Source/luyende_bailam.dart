import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:onluyenapp/src/Model/bailam_model.dart';
import 'package:onluyenapp/src/Source/LoginPage.dart';
import 'package:onluyenapp/src/Source/screen.dart';
import 'package:onluyenapp/src/get/getdulieu.dart';

class bailam_thithu extends StatefulWidget {
  const bailam_thithu({super.key});

  @override
  State<bailam_thithu> createState() => _bailam_thithuState();
}

class _bailam_thithuState extends State<bailam_thithu> {
  @override
  List<String> docIDs = [];

// get docIDs
  Future getDocId() async {
    await FirebaseFirestore.instance.collection('dulieu').get().then(
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
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      IconButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Screen_page())),
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        'Bài Test',
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey[300],
      ),
      body: Column(children: [
        Expanded(
            child: FutureBuilder(
          future: getDocId(),
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: docIDs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Container(
                    margin: const EdgeInsets.only(
                      right: 12,
                      left: 12,
                      bottom: 21,
                    ),
                    // decoration: const BoxDecoration(
                    //   border: Border(
                    //     top: BorderSide(
                    //         width: 0.5, color: colorShadow),
                    //     left: BorderSide(
                    //         width: 0.5, color: colorShadow),
                    //     right: BorderSide(
                    //         width: 0.5, color: colorShadow),
                    //     bottom: BorderSide(
                    //         width: 0.5, color: colorShadow),
                    //   ),
                    //   boxShadow: [
                    //     BoxShadow(
                    //       offset: Offset(0, 10),
                    //       blurRadius: 10,
                    //       spreadRadius: 2,
                    //       color: colorShadow,
                    //     ),
                    //   ],
                    //   color: Colors.white,
                    //   borderRadius: BorderRadius.all(
                    //       Radius.circular(8)),
                    // ),
                    child: Column(
                      children: [
                        Getdulieu(documentid: docIDs[index]),

                        Container(
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 15,
                            bottom: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // ignore: avoid_unnecessary_containers
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 30,
                                margin: const EdgeInsets.only(right: 8),
                                decoration: const BoxDecoration(
                                  color: Colors.black12,
                                ),
                                child: const Text(
                                  'Duy trì',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 30,
                                margin: const EdgeInsets.only(right: 8),
                                decoration: const BoxDecoration(
                                  color: Colors.blueAccent,
                                ),
                                child: const Text(
                                  'Duy trì',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  color: Colors.cyan,
                                ),
                                child: const Text(
                                  '+',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 11,
                          ),
                          child: Row(children: [
                            Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(
                                  left: 5,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 8,
                                      height: 8,
                                      margin: const EdgeInsets.only(
                                        right: 3.0,
                                      ),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    const Text(
                                      " khởi chạy",
                                      style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                )),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Getdulieu(
                                            documentid: docIDs[index])),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.topRight,
                                  padding: const EdgeInsets.only(right: 11),
                                  child: const Text(
                                    'Xem ngay >>',
                                    style: TextStyle(
                                        color: Colors.brown,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        )),
      ]),
    );
  }

  
}
