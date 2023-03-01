// ignore_for_file: file_names

// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:techgen/constants/images.dart';

class HomePageNav extends StatefulWidget {
  const HomePageNav({super.key});

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
            child: ListWheelScrollView(
              overAndUnderCenterOpacity: 0.7,
              physics: const FixedExtentScrollPhysics(),
              diameterRatio: 6,
              squeeze: 1.5,
              itemExtent: 200,
              children: [
                Material(
                  // elevation: 10,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.amber,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Event Name:",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Event Description",
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.calendar_today_rounded),
                              iconSize: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  // elevation: 10,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.amber,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Event Name:",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Event Description",
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.calendar_today_rounded),
                              iconSize: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.amber,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Event Name:",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Event Description",
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.calendar_today_rounded),
                              iconSize: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }
}

// import 'package:linked_scroll_controller/linked_scroll_controller.dart';

// class SecondPage extends StatefulWidget {
//   const SecondPage({super.key});

//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   final double _lowerListItemHeight = 100;
//   final double _upperListItemHeight = 140;

//   late LinkedScrollControllerGroup _controllers;
//   late ScrollController lowerListController;
//   late ScrollController upperListController;

//   @override
//   void initState() {
//     super.initState();
//     _controllers = LinkedScrollControllerGroup();
//     lowerListController = _controllers.addAndGet();
//     upperListController = _controllers.addAndGet();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   Widget _buildLowerList() {
//     return ListView(
//       controller: lowerListController,
//       children: List.generate(
//         20,
//         (index) => Padding(
//           padding: const EdgeInsets.symmetric(
//             vertical: 20.0,
//             horizontal: 45,
//           ),
//           child: _lowerListItem(
//             index,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildUpperList() {
//     return ListView(
//       controller: upperListController,
//       children: List.generate(
//         20,
//         (index) => _upperListItem(index),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Stack(
//         children: [
//           _buildLowerList(),
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10.0),
//               child: Container(
//                 height: _upperListItemHeight,
//                 clipBehavior: Clip.antiAlias,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Stack(
//                   fit: StackFit.loose,
//                   children: [
//                     Positioned(
//                       top: -290,
//                       left: 0,
//                       child: SizedBox(
//                         width: MediaQuery.of(context).size.width,
//                         height: MediaQuery.of(context).size.height,
//                         child: Center(
//                           child: _buildUpperList(),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _lowerListItem(int index) {
//     return Container(
//       height: _lowerListItemHeight,
//       decoration: BoxDecoration(
//           color: Colors.greenAccent.withOpacity(0.3),
//           borderRadius: BorderRadius.circular(10)),
//       padding: const EdgeInsets.symmetric(
//         vertical: 15,
//         horizontal: 20,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Event: ${index.toString()}",
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           const Text("Event Description")
//         ],
//       ),
//     );
//   }

//   Widget _upperListItem(int index) {
//     return Container(
//       height: _upperListItemHeight,
//       color: Colors.greenAccent,
//       padding: const EdgeInsets.symmetric(
//         vertical: 20,
//         horizontal: 20,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Event: ${index.toString()}",
//             style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           const Text(
//             "Event Description event description event description event description event description",
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//     // required this.title,
//   });

//   // final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

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
