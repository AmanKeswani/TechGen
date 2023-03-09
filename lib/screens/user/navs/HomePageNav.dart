// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:techgen/constants/images.dart';

class HomePageNav extends StatefulWidget {
  const HomePageNav({Key? key}) : super(key: key);

  @override
  State<HomePageNav> createState() => _HomePageNavState();
}

class _HomePageNavState extends State<HomePageNav> {
  @override
  Widget build(BuildContext context) {
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
              fit: BoxFit.cover,
            ),
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
        // Expanded(
        //   child: Carousel(
        //     initialPage: 0,
        //     axis: Axis.vertical,
        //     height: 300,
        //     type: Types.slideSwiper,
        //     width: 300,
        //     children: List.generate(
        //       10,
        //       (index) => Container(
        //         decoration: BoxDecoration(
        //           color: Colors.red,
        //           borderRadius: BorderRadius.circular(20),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // Tesing flutter_multi_carousal, stacked_card_carousal, overlapped_carousal
      ],
    );
  }
}
