import 'dart:async';

import 'package:astroapp/marriage_page.dart';
import 'package:astroapp/widgets/search_icon.dart';
import 'package:flutter/material.dart';

class SubHomeScreen extends StatefulWidget {
  const SubHomeScreen({super.key});

  @override
  State<SubHomeScreen> createState() => _SubHomeScreenState();
}

class _SubHomeScreenState extends State<SubHomeScreen>
    with SingleTickerProviderStateMixin {
  bool _showBlueContainer = false;

  @override
  void initState() {
    super.initState();
    // Set a timer to automatically switch the widget after a delay
    Timer(const Duration(milliseconds: 3), () {
      setState(() {
        _showBlueContainer = true; // Change to blue container after 2 seconds
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        child: _showBlueContainer
            ? SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 1), // Start from bottom
                  end: const Offset(0, 0), // End at original position
                ).animate(CurvedAnimation(
                  parent: AnimationController(
                    vsync: this,
                    duration: const Duration(seconds: 2), // Animation duration
                  )..forward(),
                  curve: Curves.easeIn, // Use a slower easing curve
                )),
                child: DefaultTabController(
                  length: 6,
                  child: Scaffold(
                    backgroundColor: const Color(0xff181824),
                    appBar: AppBar(
                      iconTheme: const IconThemeData(
                        color: Colors.white, //change your color here
                      ),
                      backgroundColor: const Color(0xff181824),
                      title: const Text(
                        'Premium Reports',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      actions: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ImageIcon(AssetImage('assets/moneyicon.png')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: ImageIcon(AssetImage(
                            'assets/bell.png',
                          )),
                        )
                      ],
                    ),
                    // body: Hero(
                    //   tag: 'sun',
                    //   child: Container(
                    //     decoration: const BoxDecoration(
                    //       color: Colors.blue,
                    //     ),
                    //   ),
                    // ),
                    body: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Browse our Premium Reports',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SearchField(),
                          const TabBar(
                              indicatorColor: Colors.blue,
                              indicatorSize: TabBarIndicatorSize.tab,
                              tabAlignment: TabAlignment.start,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              dividerColor: Colors.transparent,
                              isScrollable: true,
                              labelColor: Colors.white,
                              tabs: [
                                Tab(text: "Marriage"),
                                Tab(text: "Carieer"),
                                Tab(text: "Family"),
                                Tab(text: "Health"),
                                Tab(text: "Finance"),
                                Tab(text: "Business"),
                              ]),
                          Expanded(
                            child: TabBarView(children: [
                              // Container(
                              //   child: const Text("Marriage"),
                              // ),
                              const MarriagePage(),
                              Container(
                                child: const Text("Carieer"),
                              ),
                              Container(
                                child: const Text("Family"),
                              ),
                              Container(
                                child: const Text("Health"),
                              ),
                              Container(
                                child: const Text("Finance"),
                              ),
                              Container(
                                child: const Text("Business"),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
            : Hero(
                tag: 'sun',
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ));
  }
}
