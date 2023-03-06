// ignore_for_file: file_names, use_build_context_synchronously, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techgen/constants/images.dart';
import 'package:techgen/constants/routes.dart';
import 'package:techgen/constants/sharedPreferences.dart';

class HomePageNav extends StatefulWidget {
  const HomePageNav({super.key});

  @override
  State<HomePageNav> createState() => _HomePageNavState();
}

late final SharedPreferences _sharedPreferences;
var _context;

class _HomePageNavState extends State<HomePageNav> {
  @override
  @override
  Widget build(BuildContext context) {
    _context = context;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          height: height * 0.21,
          width: width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            image: DecorationImage(
                image: AssetImage(
                  homeScreenImage,
                ),
                fit: BoxFit.cover),
          ),
          child: const Center(
            child: Text(
              "Event Updates",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.white70,
              ),
            ),
          ),
        ),
        // SizedBox(height: 10),
        Expanded(
            child: Container(
          width: width,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: IconButton(
                onPressed: _logOut,
                icon: Icon(Icons.logout),
              ),
            ),
          ),
        )),
      ],
    );
  }

  void _logOut() {
    var logger = Logger();
    setState(() async {
      _sharedPreferences = await SharedPreferences.getInstance();
      logger.d(
        _sharedPreferences.setString(userSharedPreferenceString, 'null'),
      );
      Navigator.of(_context).pushNamedAndRemoveUntil(
        LoginPageRoute,
        (route) => false,
      );
      Fluttertoast.showToast(msg: 'You have been logged out');
    });
  }
}

// class _MyHomePageState extends State<MyHomePage>
//     with SingleTickerProviderStateMixin {
//   final _pageController = PageController(viewportFraction: 0.5);

//   @override
//   Widget build(BuildContext context) {
//     return PageView.builder(
//       pageSnapping: true,
//       controller: _pageController,
//       scrollDirection: Axis.vertical,
//       itemBuilder: (context, index) {
//         return AnimatedBuilder(
//           animation: _pageController,
//           builder: (context, child) {
//             final page = _pageController.position.hasContentDimensions
//                 ? _pageController.page!
//                 : 0;
//             final animValue = (index - page).toDouble();
//             return Opacity(
//               opacity: clampDouble(
//                 (lerpDouble(1, .7, animValue) ?? 1).abs(),
//                 0,
//                 1,
//               ),
//               child: Transform.scale(
//                 scale: clampDouble(
//                     1 - (lerpDouble(0, .2, animValue) ?? 0).abs(), .8, 1),
//                 child: child,
//               ),
//             );
//           },
//           child: MyCard(index: index),
//         );
//       },
//     );
//   }
// }

// class MyCard extends StatelessWidget {
//   const MyCard({super.key, required this.index});

//   final int index;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(20),
//       padding: const EdgeInsets.all(20),
//       height: MediaQuery.of(context).size.height * 0.5,
//       color: Colors.blue,
//       child: Column(
//         children: [
//           Text("Card number $index"),
//           const SizedBox(height: 20),
//           const Text("data"),
//           const SizedBox(height: 20),
//           const Text("data"),
//         ],
//       ),
//     );
//   }
// }
