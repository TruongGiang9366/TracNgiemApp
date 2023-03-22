import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:onluyenapp/src/Source/LoginPage.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({super.key});

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  bool _obscureText = true;
  DateTime date = new DateTime(2023, 18, 02);
  TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                  child: const Text(
                    "Đăng Ký",
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
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: GestureDetector(
                    onTap: () {},
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
                          'Đăng Ký',
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
                        Text("Bạn đã có tài khoản?"),
                        TextButton(
                          // ignore: prefer_const_constructors
                          child: Text(
                            'Đăng nhập ngay',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          ),
                        )
                      ],
                    ),
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
