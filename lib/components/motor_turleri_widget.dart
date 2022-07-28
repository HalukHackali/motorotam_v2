import 'package:flutter/material.dart';
import 'package:motorotam_v2/model/tur_model.dart';

class MotorTurleri extends StatelessWidget {
  TurModel tur;
   MotorTurleri({Key? key, required this.tur}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Row(
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.only(
                          topLeft: const Radius.circular(0),
                          topRight: const Radius.circular(0),
                          bottomLeft: tur.koseLeft,
                          bottomRight: tur.koseRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0.1, 4),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child:  Center(
                        child: RotatedBox(
                          quarterTurns: 4,
                          child: Text(
                           tur.turAdi ,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Inter',
                                fontSize: 18,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                        ),
                      ),
                    ),
                   tur.turAdi != 'All..' ?
                     Container(
                       decoration:   const BoxDecoration(
                         boxShadow:  [BoxShadow(
                           color: Colors.black,
                           spreadRadius: 4,
                           blurRadius: 6,
                           offset:  Offset(1, -3),
                         ),
                         ],
                       ),

                       height: 42,
                       width: 2,



                     ) : const SizedBox(
                     height: 0.0,
                   ),

                  ],
                ),
              ],
            ),
          ],
        );

  }
}