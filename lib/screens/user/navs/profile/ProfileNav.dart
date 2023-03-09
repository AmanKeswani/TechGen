// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unused_element, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:techgen/constants/colors.dart';
import 'package:techgen/database/CloudUsers.dart';

class ProfileNav extends StatefulWidget {
  const ProfileNav({super.key});

  @override
  State<ProfileNav> createState() => _ProfileNavState();
}

var _height;
var _width;

late CloudUsers _cloudUsers;

class _ProfileNavState extends State<ProfileNav> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    _height = height;
    final width = MediaQuery.of(context).size.width;
    _width = width;

    _cloudUsers = CloudUsers();
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: height * 0.33,
            width: width,
            decoration: const BoxDecoration(
              color: tileColor,
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
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
                      color: textBoxColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      _item(
                          icon: Icon(Icons.edit_document, size: 30),
                          desc: 'Edit Profile'),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  padding: EdgeInsets.all(
                    height * 0.025,
                  ),
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: textBoxColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      _item(
                          icon: Icon(Icons.diamond_outlined, size: 30),
                          desc: "My Diamonds"),
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
                      _item(
                        desc: 'Referral Code',
                        icon: Icon(
                          Icons.qr_code_2,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  padding: EdgeInsets.all(
                    height * 0.025,
                  ),
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: textBoxColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      _item(
                        desc: 'My Team',
                        icon: Icon(
                          Icons.groups_2_rounded,
                          size: 30,
                        ),
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
                      _item(
                        desc: 'My Friends',
                        icon: Icon(
                          Icons.people_alt_rounded,
                          size: 30,
                        ),
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
                      _item(
                        desc: 'Previous Events',
                        icon: Icon(
                          Icons.calendar_month,
                          size: 30,
                        ),
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
                      _item(
                        icon: Icon(
                          Icons.settings,
                          size: 30,
                        ),
                        desc: "About App",
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _cloudUsers.logOut(context: context);
                            },
                            child: Text(
                              "Log Out",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _item({
    Icon? icon,
    required String desc,
  }) {
    return Row(
      children: [
        icon ?? SizedBox(),
        SizedBox(
          width: _width * 0.05,
        ),
        Text(
          desc,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        Expanded(
          child: SizedBox(
            width: _width * 0.3,
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 30,
        ),
      ],
    );
  }
}
