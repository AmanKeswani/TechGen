// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:techgen/constants/colors.dart';
import 'package:techgen/constants/routes.dart';
import 'package:techgen/database/CloudUsers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

CloudUsers _cloudUsers = CloudUsers();

late final TextEditingController _usernameController;
late final TextEditingController _passwordController;

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                        horizontal: width * 0.01, vertical: height * 0.006),
                    child: TextField(
                      controller: _usernameController,
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
                      color: textBoxColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.01, vertical: height * 0.006),
                    child: TextField(
                      controller: _passwordController,
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
                          style: TextButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              RegisterPageRoute,
                            );
                          },
                          child: const Text(
                            "Register Here",
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
                onPressed: () async {
                  await _cloudUsers.loginUser(
                    username: _usernameController.text,
                    password: _passwordController.text,
                    context: context,
                  );
                },
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
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
