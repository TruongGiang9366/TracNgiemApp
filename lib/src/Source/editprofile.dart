// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:onluyenapp/src/Source/Dialog.dart';
import 'package:onluyenapp/src/Source/setting.dart';
import 'Dialog.dart';

class editprofile_page extends StatefulWidget {
  const editprofile_page({super.key});

  @override
  State<editprofile_page> createState() => _editprofile_pageState();
}

class _editprofile_pageState extends State<editprofile_page> {
  bool _obscureText = true;
  DateTime date = new DateTime(2023, 18, 02);
  TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                                builder: (context) => Setting_Page())),
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Thay đổi thông tin',
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
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'Họ Và Tên',
                      labelText: 'Họ Và Tên',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(FontAwesomeIcons.user),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'Number Phone',
                      labelText: 'Number Phone',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefix: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          '+91',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'Sinh Nhật',
                      labelText: 'Sinh Nhật',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.calendar_today_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onTap: () async {
                      DateTime? pickeddate = await showDatePicker(
                        context: context,
                        initialDate: date,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101),
                      );
                      if (pickeddate != null) {
                        setState(() {
                          _date.text =
                              DateFormat('yyyy-MM-dd').format(pickeddate);
                        });
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),

                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'Mật Khẩu',
                      labelText: 'Mật Khẩu',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    obscureText: _obscureText,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200.0,
                            height: 50.0,
                            child: ElevatedButton(
                                onPressed: () => dialog().imformations(
                                      context,
                                      'Thông Báo',
                                      'Bạn có chắc muốn cập nhật thông tin của mình không?',
                                    ),
                                // ignore: sort_child_properties_last
                                child: Text(
                                  'Cập Nhật',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: BorderSide(
                                                color: Colors.blue))))),
                          ),
                        ],
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
