// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 182, 177, 177),
      // appBar: AppBar(
      //   centerTitle: true,
      //   titleTextStyle: const TextStyle(fontSize: 30),
      //   title: const Text(
      //     "TechGen",
      //     style: TextStyle(color: Color.fromARGB(221, 45, 43, 43)),
      //   ),
      //   backgroundColor: const Color.fromARGB(255, 182, 177, 177),
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 182, 177, 177),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  const Text(
                    "Welcome to TechGen",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.013),
                  const Text(
                    "Login to your account",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(0, 0, 0, 0.751),
                    ),
                  ),
                  SizedBox(height: height * 0.17),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: const [
                        TextField(
                          cursorColor: Colors.blueGrey,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.account_circle_rounded,
                              color: Colors.black45,
                            ),
                            label: Text("Username"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.013),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      children: const [
                        TextField(
                          cursorColor: Colors.blueGrey,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.password_rounded,
                              color: Colors.black45,
                            ),
                            label: Text("Password"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 77, 75, 75),
                              ),
                            ),
                            Text(
                              "Register Here",
                              style: TextStyle(
                                color: Color.fromARGB(255, 77, 75, 75),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.052),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.32),
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        // borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
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
    );
  }
}