// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:techgen/constants/colors.dart';
import 'package:techgen/models/user.dart';
import 'package:techgen/utils/shared_preference.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    final User user = getSharedPreferenceUser();

    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: eventAppBar(title: "Edit Details"),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.07,
                vertical: size.height * 0.01,
              ),
              child: TextField(
                enabled: false,
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar eventAppBar({required String title}) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: 30,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 30,
          color: Colors.grey,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
