import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:onluyenapp/main_page.dart';
import 'package:onluyenapp/src/Source/RegisterPage.dart';
import 'package:onluyenapp/src/Source/editpassword.dart';
import 'package:onluyenapp/src/Source/trangchu.dart';
// import 'package:test_1/view/forgot_pw_page.dart';
// import 'package:test_1/view/home.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({Key? key, required this.showRegisterPage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<User?> signIn() async {
    try {
      // ignore: unused_local_variable
      final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.toString().trim(),
        password: _passwordController.text.toString().trim(),
      );

      return user.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // ignore: avoid_print
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        // ignore: avoid_print
        print('Wrong password provided for that user.');
      }
      return null;
    } catch (e) {
      print("Loi ne nha: " + e.toString());
      return null;
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  // ignore: prefer_final_fields
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) {
              //           return Mainpage();
              //         },
              //       ),
              //     );
              //   },
              // ),
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
                  controller: _emailController,
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
                  controller: _passwordController,
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
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return editpassword();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'đổi mk ?',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: GestureDetector(
                  onTap: () async {
                    final user = await signIn();
                    if (user != null) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TrangChu()));
                    }
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
                      GestureDetector(
                        // ignore: prefer_const_constructors
                        //
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RegisterPage(
                                  showLoginPage: () {},
                                );
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Đăng ký ngay',
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
    );
  }
}
