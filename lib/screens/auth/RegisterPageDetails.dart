// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:techgen/constants/colors.dart';
import 'package:techgen/constants/routes.dart';
import 'package:techgen/database/CloudUsers.dart';
import 'package:techgen/models/user.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:techgen/screens/auth/auth_exceptions.dart';
import 'package:techgen/utils/auth_validations.dart';
import 'package:techgen/utils/text_boxes.dart';

class RegisterPageDetails extends StatefulWidget {
  const RegisterPageDetails({super.key});

  @override
  State<RegisterPageDetails> createState() => _RegisterPageDetailsState();
}

late TextEditingController _firstNameController;
late TextEditingController _lastNameController;
late TextEditingController _emailController;
late TextEditingController _passwordController;
late TextEditingController _confirmPasswordController;
late TextEditingController _collegeController;
late TextEditingController _courseController;
late TextEditingController _phoneNumberController;

late CloudUsers _usersInstance;

class _RegisterPageDetailsState extends State<RegisterPageDetails> {
  late TextBoxes tb;
  @override
  void initState() {
    // Controllers
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _collegeController = TextEditingController();
    _courseController = TextEditingController();
    _phoneNumberController = TextEditingController();

    _phoneNumberController.text = '+91';
    _usersInstance = CloudUsers();
    tb = TextBoxes(context: context);

    super.initState();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _collegeController.dispose();
    _courseController.dispose();
    _phoneNumberController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    var nav = Navigator.of(context);
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
                          child: tb.detailsTextBox(
                            label: "First Name",
                            controller: _firstNameController,
                          ),
                        ),
                        Flexible(
                          child: tb.detailsTextBox(
                            label: "Last Name",
                            controller: _lastNameController,
                          ),
                        ),
                      ],
                    ),
                    tb.detailsTextBox(
                      label: "Email",
                      controller: _emailController,
                    ),
                    tb.detailsTextBox(
                      label: "Password",
                      obscureText: true,
                      controller: _passwordController,
                    ),
                    tb.detailsTextBox(
                      label: "Confirm Password",
                      obscureText: true,
                      controller: _confirmPasswordController,
                    ),
                    tb.detailsTextBox(
                      label: "College",
                      controller: _collegeController,
                    ),
                    tb.detailsTextBox(
                      label: "Course",
                      controller: _courseController,
                    ),
                    tb.detailsTextBox(
                      label: "Phone Number",
                      controller: _phoneNumberController,
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
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  LoginPageRoute,
                                  (_) => false,
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
                    onPressed: () async {
                      final user = User(
                        admin: false,
                        collegeName: _collegeController.text.trim(),
                        diamonds: 0,
                        emailID: _emailController.text.trim(),
                        eventList: [],
                        firstName: _firstNameController.text.trim(),
                        friendsList: [],
                        head: false,
                        id: '',
                        lastName: _lastNameController.text.trim(),
                        password: _passwordController.text..trim(),
                        phoneNumber: _phoneNumberController.text.trim(),
                        registeredEvents: [],
                        userName:
                            '${_firstNameController.text.trim()}${_lastNameController.text.trim()}',
                        volunteer: false,
                      );
                      try {
                        registrationValidation(
                          college: _collegeController.text,
                          confirmPassword: _confirmPasswordController.text,
                          course: _courseController.text,
                          emailID: _emailController.text,
                          firstName: _firstNameController.text,
                          lastName: _lastNameController.text,
                          password: _passwordController.text,
                          phoneNumber: _phoneNumberController.text,
                        );
                        await _usersInstance.createNewUser(user: user);
                        nav.pop();
                        Fluttertoast.showToast(
                            msg: "User created. Username: ${user.userName}");
                      } on EmptyRegistrationFieldException catch (_) {
                        Fluttertoast.showToast(
                          msg: 'One or more of the fields are empty.',
                          toastLength: Toast.LENGTH_SHORT,
                        );
                      } on EmailErrorException catch (_) {
                        Fluttertoast.showToast(
                          msg: 'Email',
                          toastLength: Toast.LENGTH_SHORT,
                        );
                      } on PasswordErrorException catch (_) {
                        Fluttertoast.showToast(
                          msg: 'Password',
                          toastLength: Toast.LENGTH_SHORT,
                        );
                      }
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
