// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:techgen/constants/routes.dart';
import 'package:techgen/constants/colors.dart';

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
                color: tileColor,
                fontSize: width * 0.055,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Text(
              "Create account",
              style: TextStyle(
                color: titleColor,
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
                    color: textBoxColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.01,
                    vertical: height * 0.006,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 60,
                      ),
                      hintText: "Phone Number",
                      prefixIcon: Icon(
                        Icons.phone,
                        size: width * 0.08,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.001,
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
                        "Already have an account?",
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
                          Navigator.pushNamed(
                            context,
                            LoginPageRoute,
                          );
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: titleColor,
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
                  color: titleColor,
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const Text(
              "OR",
              style: TextStyle(
                color: titleColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                width: width * 0.65,
                height: height * 0.06,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: textBoxColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Continue with Google",
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 23,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
