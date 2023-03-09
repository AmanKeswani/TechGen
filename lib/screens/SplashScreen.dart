// ignore_for_file: file_names, use_build_context_synchronously, unused_local_variable
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techgen/constants/routes.dart';
import 'package:techgen/constants/images.dart';
import 'package:techgen/constants/sharedPreferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

late final SharedPreferences _sharedPreferences;

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateLoginScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 50,
            image: AssetImage(splashImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Tech",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 50,
                  ),
                ),
                Text(
                  "Gen",
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 46, 24),
                    fontSize: 50,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  void _navigateLoginScreen() {
    Future.delayed(
      const Duration(seconds: 5),
      () async {
        _sharedPreferences = await SharedPreferences.getInstance();
        final userJSON =
            _sharedPreferences.getString(userSharedPreferenceString) ?? 'null';
        if (userJSON == 'null') {
          Navigator.pushNamedAndRemoveUntil(
            context,
            LoginPageRoute,
            (_) => false,
          );
        } else {
          var logger = Logger();
          try {
            final variable = jsonDecode(userJSON);
          } on Exception catch (e) {
            logger.e(e);
          }
          Navigator.pushNamedAndRemoveUntil(
            context,
            HomePageRoute,
            (_) => false,
          );
        }
      },
    );
  }
}
