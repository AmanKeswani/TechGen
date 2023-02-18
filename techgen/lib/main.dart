// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 30),
        title: Text(
          "TechGen",
          style: TextStyle(color: Color.fromARGB(221, 45, 43, 43)),
        ),
        backgroundColor: Color.fromRGBO(243, 243, 243, 1),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 243, 243, 1),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Text(
                    "Welcome to TechGen",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Login to your account",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromRGBO(0, 0, 0, 0.751)),
                  ),
                  // SizedBox(height: 100),
                ],
              ),
            ),
            SizedBox(height: 150),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  children: [
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
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  children: [
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
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Register Here",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
