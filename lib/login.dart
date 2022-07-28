import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_task/signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 0, left: 24.0, right: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.modulate,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Login to your account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 9, left: 15),
                        child: Material(
                          shadowColor: Colors.blueAccent,
                          elevation: 10,
                          borderRadius: BorderRadius.circular(40.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Username',
                                contentPadding: EdgeInsets.only(left: 70),
                                fillColor: Colors.white,
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent,
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.account_circle_outlined,
                          color: Colors.blue,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 9, left: 15),
                        child: Material(
                          shadowColor: Colors.blueAccent,
                          elevation: 10,
                          borderRadius: BorderRadius.circular(40.0),
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: 'Password',
                                contentPadding: EdgeInsets.only(left: 70),
                                fillColor: Colors.white,
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent,
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.lock_outline,
                          color: Colors.blue,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 180,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                      '------------------------Or Sing In with------------------------'),
                  const SizedBox(
                    height: 30,
                  ),
                  Material(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 80,
                          width: 90,
                          child: Card(
                            shadowColor: Colors.blue,
                            elevation: 10,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.facebook_outlined,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 90,
                          child: Card(
                            shadowColor: Colors.blue,
                            elevation: 10,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              FontAwesomeIcons.twitter,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 90,
                          child: Card(
                            shadowColor: Colors.blue,
                            elevation: 10,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              FontAwesomeIcons.google,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      GestureDetector(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SignUp();
                            }));
                          },
                          child: const Text(
                            'Sing Up here',
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
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
