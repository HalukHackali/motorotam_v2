import 'package:flutter/material.dart';

class MotorDetailWidget extends StatelessWidget {
  String motorResim;
  String motorResimLeft;
  String motorResimRight;

   MotorDetailWidget({Key? key,
     required this.motorResim,
     required this.motorResimLeft,
     required this.motorResimRight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        //clipBehavior: Clip.none, fit: StackFit.expand,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: <Widget>[
          Image.asset(motorResim),//Container
          Positioned(
            top: 20,
            right: 10,
            child: SizedBox(
              width: 70,
              child: Image.asset(motorResimLeft),
            ),
          ),
          Positioned(
            top: 65,
            right: 10,
            child: SizedBox(
              width: 70,
              child: Image.asset(motorResimRight),
            ),
          ), //Container
        ], //<Widget>[]
      ),
    );
  }
}

/*
Image.asset("assets/images/390_Duke.jpg")),
Image.asset("assets/images/390_Duke.jpg", width: 50,),
Image.asset("assets/images/390_Duke.jpg", width: 50,),
*/