// ignore_for_file: unused_field, prefer_const_constructors

import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onluyenapp/src/Source/RegisterPage.dart';
import 'package:onluyenapp/src/Source/screen.dart';
import 'package:onluyenapp/src/Source/trangchu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ignore: prefer_final_fields
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                  child: const Text(
                    "Đăng Nhập",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
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
                // ignore: prefer_const_constructors
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
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen_page(),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Đăng Nhập',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Bạn chưa có tài khoản?"),
                        TextButton(
                          // ignore: prefer_const_constructors
                          child: Text(
                            'Đăng ký ngay',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register_Page(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 300,
                            height: 60,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.facebook),
                              // ignore: prefer_const_constructors
                              label: Text(
                                'Đăng Nhập Bằng FaceBook',
                                // ignore: prefer_const_constructors
                                style: TextStyle(fontSize: 14),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(color: Colors.red),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 300,
                            height: 60,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.google,
                                size: 20,
                              ),
                              label: Text(
                                'Đăng Nhập Bằng Google',
                                style: TextStyle(fontSize: 14),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(color: Colors.red),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
