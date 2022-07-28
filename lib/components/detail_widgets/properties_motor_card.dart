import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PropertiesMotorCard extends StatelessWidget {
  String motorHacim;
  String motorPower;
  String motorHiz;
  String motorFren;
  String motorTork;


   PropertiesMotorCard({
    Key? key,
    required this.motorHacim,
    required this.motorPower,
    required this.motorHiz,
    required this.motorFren,
    required this.motorTork,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print("tıklandı");
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, left: 5, right: 5, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: 90,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0.1, 4),
                          ),
                        ],
                        color: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  [
                          Center(
                            child:  Image.asset("assets/images/icons_img/engine.png"),
                          ),
                          const Center(
                            child: Text(
                              'Engine',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ),
                           Center(
                            child: Text(
                               motorHacim,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: 90,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0.1, 4),
                          ),
                        ],
                        color: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  [
                          Center(
                            child:  Image.asset("assets/images/icons_img/Muscle.png"),
                          ),
                          const Center(
                            child: Text(
                              'Power',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ),
                           Center(
                            child: Text(
                              motorPower,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: 90,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0.1, 4),
                          ),
                        ],
                        color: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  [
                          Center(
                            child:  Image.asset("assets/images/icons_img/Speedometer.png"),
                          ),
                          const Center(
                            child: Text(
                              'Speed',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ),
                           Center(
                            child: Text(
                              motorHiz + ' km/h',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: 90,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0.1, 4),
                          ),
                        ],
                        color: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  [
                          Center(
                            child:  Image.asset("assets/images/icons_img/Brake Discs.png"),
                          ),
                          const Center(
                            child: Text(
                              'Brake',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ),
                          const Center(
                            child: Text(
                              'ABS/Disk',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Container(
                      width: 90,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0.1, 4),
                          ),
                        ],
                        color: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  [
                          Center(
                            child:  Image.asset('assets/images/icons_img/engine.png'),
                          ),
                          const Center(
                            child: Text(
                              'Tork',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ),
                           Center(
                            child: Text(
                              motorTork,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),



                ],
              ),

            ),
          );
        },
      ),
    );
  }
}