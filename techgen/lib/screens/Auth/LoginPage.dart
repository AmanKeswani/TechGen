// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:techgen/constants/routes.dart';

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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Text(
              "Welcome to TechGen",
              style: TextStyle(
                color: const Color(0xFF54A48B),
                fontSize: width * 0.055,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Text(
              "Login to your account",
              style: TextStyle(
                color: const Color(0xFF1E3D33),
                fontSize: width * 0.08,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.08,
              ),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFCEEDE3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.01, vertical: height * 0.006),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 60,
                      ),
                      hintText: "Username",
                      prefixIcon: Icon(
                        Icons.person_2_rounded,
                        size: width * 0.08,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.08,
              ),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFCEEDE3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.01, vertical: height * 0.006),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 60,
                      ),
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.key,
                        size: width * 0.08,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RegisterPageRoute);
                        },
                        child: const Text(
                          "Register Here",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Color(0xFF0A261D),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                width: width * 0.3,
                height: height * 0.05,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Color(0xFF1E3D33),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
