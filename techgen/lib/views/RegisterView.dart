// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
      //   backgroundColor: Color.fromARGB(255, 182, 177, 177),
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 182, 177, 177),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.all(20),
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
                  const SizedBox(height: 20),
                  const Text(
                    "Create an account",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(0, 0, 0, 0.751),
                    ),
                  ),
                  const SizedBox(height: 150),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
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
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: const [
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.blueGrey,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.alternate_email_rounded,
                              color: Colors.black45,
                            ),
                            label: Text("Email-ID"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      children: const [
                        TextField(
                          obscureText: true,
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
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: const [
                        TextField(
                          obscureText: true,
                          cursorColor: Colors.blueGrey,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.password_rounded,
                              color: Colors.black45,
                            ),
                            label: Text("Confirm Password"),
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
                              "Already have an account?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 77, 75, 75),
                              ),
                            ),
                            Text(
                              "Login Here",
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
                    padding: EdgeInsets.symmetric(horizontal: width * 0.29),
                    child: Container(
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Register",
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
