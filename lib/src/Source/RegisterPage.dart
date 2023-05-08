import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({Key? key, required this.showLoginPage}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _firsNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    _firsNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

// xác thực đăng nhập
  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.toString().trim(),
        password: _passwordController.text.toString().trim(),
      );

      addUserDetails(
        _firsNameController.text.trim(),
        _lastNameController.text.trim(),
        _emailController.text.trim(),
        int.parse(_ageController.text.trim()),
      );
    }
    ;
  }

  Future addUserDetails(
      String firsName, String lastname, String email, int age) async {
    await FirebaseFirestore.instance.collection('users').add({
      'first name': firsName,
      'last name': lastname,
      'age': age,
      'email': email,
    });
  }

  bool passwordConfirmed() {
    if (_passwordController.text.toString().trim() ==
        _confirmpasswordController.text.toString().trim()) {
      return true;
    } else {
      return false;
    }
  }

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

                //firlName
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    controller: _firsNameController,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      //hintText: 'firs Name',
                      labelText: 'firs Name',
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

                //lastname
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    controller: _lastNameController,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      // hintText: 'last Name',
                      labelText: 'last name',
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

                //age
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    controller: _ageController,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      //hintText: 'age',
                      labelText: 'age',
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

                // email
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    controller: _emailController,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      //hintText: 'Email',
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
                    controller: _passwordController,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),

                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      // hintText: 'Mật Khẩu',
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
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(height: 10),

                //confirm pass
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    controller: _confirmpasswordController,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),

                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      // hintText: 'nhập lại Mật Khẩu',
                      labelText: 'nhập lại Mật Khẩu',
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
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(height: 40),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: GestureDetector(
                    onTap: () {
                      signUp();
                    },
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
                          'Đăng ký',
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
                        Text("Tôi đã có tài khoản"),
                        GestureDetector(
                          // ignore: prefer_const_constructors
                          onTap: widget.showLoginPage,
                          child: Text(
                            'Đăng nhập ngay',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          // onPressed: () => Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => homepage(),
                          //   ),
                          // ),
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
