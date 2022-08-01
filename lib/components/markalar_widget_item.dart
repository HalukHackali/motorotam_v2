import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:motorotam_v2/model/marka_model.dart';

class MarkalarWidget extends StatelessWidget {
  MarkaModel marka;
  MarkalarWidget({Key? key, required this.marka}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 0.0, left: 5, right: 0, bottom: 0),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 60,
              height: 80,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(marka.markaResim),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                  Text(
                    marka.markaAd,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
