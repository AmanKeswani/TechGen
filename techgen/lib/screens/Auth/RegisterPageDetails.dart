// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:techgen/constants/colors.dart';
import 'package:techgen/constants/routes.dart';

class RegisterPageDetails extends StatefulWidget {
  const RegisterPageDetails({super.key});

  @override
  State<RegisterPageDetails> createState() => _RegisterPageDetailsState();
}

var _height;
var _width;

late final TextEditingController _phoneController;

class _RegisterPageDetailsState extends State<RegisterPageDetails> {
  @override
  void initState() {
    _phoneController = TextEditingController();
    _phoneController.text = '+91';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    _height = height;
    _width = width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: height * 0.07,
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
                      color: titleColor,
                      fontSize: width * 0.08,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: _textBox(label: "First Name"),
                        ),
                        Flexible(
                          child: _textBox(label: "Last Name"),
                        ),
                      ],
                    ),
                    _textBox(label: "Email"),
                    _textBox(label: "Password", obscureText: true),
                    _textBox(label: "Confirm Password", obscureText: true),
                    _textBox(label: "College"),
                    _textBox(label: "Course"),
                    _textBox(
                      label: "Phone Number",
                      controller: _phoneController,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _textBox({
  TextEditingController? controller,
  obscureText = false,
  required String label,
}) {
  return Padding(
    padding: EdgeInsets.only(
      left: _width * 0.05,
      right: 10,
      bottom: _height * 0.05,
    ),
    child: TextField(
      controller: controller,
      style: TextStyle(fontSize: 20),
      scrollPadding: EdgeInsets.zero,
      cursorHeight: 30,
      obscureText: obscureText,
      keyboardType: (label == "Phone Number")
          ? TextInputType.number
          : (label == "Email")
              ? TextInputType.emailAddress
              : TextInputType.text,
      decoration: InputDecoration(
        // prefixText: (label == "Phone Number") ? "+91" : null,
        alignLabelWithHint: true,
        isDense: true,
        contentPadding: EdgeInsets.only(
          bottom: 7,
          top: 5,
        ),
        label: Text(
          label,
          style: TextStyle(
            color: tileColor,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    ),
  );
}
