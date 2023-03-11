// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, no_leading_underscores_for_local_identifiers

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:techgen/constants/routes.dart';
import 'package:techgen/firebase_options.dart';
import 'package:techgen/screens/SplashScreen.dart';
import 'package:techgen/screens/auth/LoginPage.dart';
import 'package:techgen/screens/auth/RegisterPageDetails.dart';
import 'package:techgen/screens/user/EventsDetail.dart';
import 'package:techgen/screens/user/HomePage.dart';
import 'package:techgen/screens/user/navs/profile/EditProfile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      routes: {
        HomePageRoute: (context) => const HomePage(),
        LoginPageRoute: (context) => const LoginPage(),
        RegisterPageRoute: (context) => const RegisterPageDetails(),
        EventDetailsPageRoute: (context) => const EventDetailsPage(),
        EditProfilePageRoute: (context) => const EditProfile(),
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
