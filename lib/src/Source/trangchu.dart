// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onluyenapp/src/Source/bailam.dart';
import 'package:onluyenapp/src/Source/dethi.dart';
import 'package:onluyenapp/src/Source/luyende.dart';

class TrangChu extends StatefulWidget {
  const TrangChu({super.key});

  @override
  State<TrangChu> createState() => _TrangChuState();
}

class _TrangChuState extends State<TrangChu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // ignore: prefer_const_literals_to_create_immutables
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Ôn Luyện THPT',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Text(
                        'Chào bạn!,',
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Chúc bạn có một ngày học tập vui vẻ',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Giới Thiệu',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    'Lịch sử hay sử học là một môn khoa học nghiên cứu về quá khứ, đặc biệt là những sự kiện liên quan đến con người. Đây là thuật ngữ chung có liên quan đến các sự kiện trong quá khứ cũng như những ghi nhớ, phát hiện, thu thập, tổ chức, trình bày, giải thích và thông tin về những sự kiện này. Những học giả viết về lịch sử được gọi là nhà sử học. Các sự kiện xảy ra trước khi được ghi chép lại được coi là thời tiền sử.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Đề Xuất',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Wrap(
                            spacing: 20.0,
                            runSpacing: 20.0,
                            children: [
                              SizedBox(
                                width: 120.0,
                                height: 100.0,
                                child: ElevatedButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LuyenDe())),
                                  // ignore: sort_child_properties_last
                                  child: Container(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/hoctap.png",
                                              width: 50,
                                              height: 50,
                                            ),
                                            SizedBox(height: 10.0),
                                            Text(
                                              "Luyện đề",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(255, 1, 223, 253)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 120.0,
                                height: 100.0,
                                child: Container(
                                  child: ElevatedButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Dethi_Page())),
                                    // ignore: sort_child_properties_last
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/study.png",
                                              width: 50,
                                              height: 50,
                                            ),
                                            SizedBox(height: 10.0),
                                            Text(
                                              "Đề thi test",
                                              style: TextStyle(
                                                color: Color(0xff0A0909),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(255, 1, 223, 253)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Đánh giá hoạt động trong tuần'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(20),
                              // decoration: BoxDecoration(
                              //   color: Color.fromARGB(255, 104, 104, 104),
                              //   borderRadius: BorderRadius.circular(20),
                              // ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/lich1.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "06/02/2023",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(20),
                              // decoration: BoxDecoration(
                              //   color: Color.fromARGB(255, 104, 104, 104),
                              //   borderRadius: BorderRadius.circular(20),
                              // ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/lich2.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "13/02/2023",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color(0xFFFF9900),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "0 Câu",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Đã Làm",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color(0xFF009999),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "0 Câu",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Trả Lời Đúng",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color(0xFFFF6633),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "0 Câu",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Trả Lời Sai",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color(0xFFFF33FF),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "0 Phút",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Thời gian làm bài",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
