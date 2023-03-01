// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:techgen/constants/routes.dart';
import 'package:techgen/screens/Auth/LoginPage.dart';
import 'package:techgen/screens/Auth/RegisterPage.dart';
import 'package:techgen/screens/SplashScreen.dart';
import 'package:techgen/screens/user/HomePage.dart';
import 'package:techgen/screens/user/UpcomingEventsNav.dart';

void main() => runApp(
      MaterialApp(
        routes: {
          HomePageRoute: (context) => const HomePage(),
          LoginPageRoute: (context) => const LoginPage(),
          RegisterPageRoute: (context) => const RegisterPage(),
        },
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
