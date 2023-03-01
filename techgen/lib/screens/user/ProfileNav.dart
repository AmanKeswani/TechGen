// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:techgen/constants/colors.dart';

class ProfileNav extends StatefulWidget {
  const ProfileNav({super.key});

  @override
  State<ProfileNav> createState() => _ProfileNavState();
}

class _ProfileNavState extends State<ProfileNav> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: height * 0.3,
          width: width,
          decoration: const BoxDecoration(
            color: tileColor,
          ),
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.07,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                child: Icon(
                  Icons.person,
                  size: 69,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                padding: EdgeInsets.all(
                  height * 0.025,
                ),
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.edit_document,
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: width * 0.3,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                padding: EdgeInsets.all(
                  height * 0.025,
                ),
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.diamond_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "My diamonds",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: width * 0.3,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.qr_code_2,
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "Refferal Code",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: width * 0.3,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                padding: EdgeInsets.all(
                  height * 0.025,
                ),
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.people_outline_rounded,
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "My Friends",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: width * 0.3,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month_rounded,
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "My Previous Events",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: width * 0.3,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.settings,
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "About App",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: width * 0.3,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
