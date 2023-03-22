import 'package:flutter/material.dart';
import 'package:onluyenapp/src/Source/screen.dart';

class Success2 extends StatefulWidget {
  const Success2({super.key});

  @override
  State<Success2> createState() => _Success2State();
}

class _Success2State extends State<Success2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Thành Công",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Bạn đã thay đổi thành công!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image.asset(
                      "assets/check.png",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Screen_page()),
                        ),
                        child: Text(
                          'Quay lại',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFe0e0e0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
