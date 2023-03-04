// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:techgen/constants/routes.dart';
import 'package:techgen/constants/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

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
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          LoginPageRoute,
          (_) => false,
        );
      },
    );
  }
}
