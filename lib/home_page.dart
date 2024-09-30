import 'package:astroapp/subhome_screen.dart';
import 'package:defer_pointer/defer_pointer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1, 0), // Start off-screen to the left
      end: const Offset(0, 0), // End at the original position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: const Color(0xff181824),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return const SubHomeScreen();
          }));
        },
        child: SlideTransition(
          position: _slideAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 600,
                    width: double.infinity,
                    color: const Color(0xff181824),
                  ),
                  Positioned(
                    left: -45,
                    top: height / 2 - 175,
                    child: Hero(
                      tag: 'sun',
                      child: Container(
                        height: 175,
                        width: 175,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -115,
                    //top: 100,
                    top: 145,
                    child: Container(
                      height: 280,
                      width: 280,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white30, width: 1)
                          // borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                    ),
                  ),
                  Positioned(
                    left: -150,
                    //top: 100,
                    bottom: 120,
                    child: Container(
                      height: 375,
                      width: 375,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(
                              color: Colors.blueAccent.withOpacity(0.4),
                              width: 2)
                          // borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                      child: DeferredPointerHandler(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: 150,
                              top: -40,
                              right: 60,
                              //top: 0,

                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          color: Colors.white24,
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Image.asset(
                                            height: 70,
                                            width: 70,
                                            // fit: BoxFit.contain,
                                            'assets/max1.png'),
                                      ),
                                    ),
                                    const Text(
                                      'Business',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 265,
                              top: 30,
                              right: -100,

                              //top: 0,

                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          color: Colors.white24,
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Image.asset(
                                            height: 90,
                                            width: 90,
                                            // fit: BoxFit.contain,
                                            'assets/max2h.png'),
                                      ),
                                    ),
                                    const Text(
                                      'Carrier',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 320,
                              top: 135,
                              right: -130,

                              //top: 0,

                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          color: Colors.white24,
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Image.asset(
                                            height: 70,
                                            width: 70,
                                            // fit: BoxFit.contain,
                                            'assets/max3.png'),
                                      ),
                                    ),
                                    const Text(
                                      'Marriage',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 280,
                              top: 260,
                              right: -120,

                              //top: 0,

                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          color: Colors.white24,
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Image.asset(
                                            height: 70,
                                            width: 70,
                                            // fit: BoxFit.contain,
                                            'assets/max4.png'),
                                      ),
                                    ),
                                    const Text(
                                      'Family',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 160,
                              top: 320,
                              right: -120,

                              //top: 0,

                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          color: Colors.white24,
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Image.asset(
                                            height: 60,
                                            width: 60,
                                            // fit: BoxFit.contain,
                                            'assets/max5.png'),
                                      ),
                                    ),
                                    const Text(
                                      'Health',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -155,
                    //top: 100,
                    top: 75,
                    child: Container(
                      height: 450,
                      width: 450,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white30, width: 1)
                          // borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                    ),
                  ),
                  Positioned(
                    left: -170,
                    //top: 100,
                    top: 12,
                    child: Container(
                      height: 520,
                      width: 520,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white30, width: 2)
                          // borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
