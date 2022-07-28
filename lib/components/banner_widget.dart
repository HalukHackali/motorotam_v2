import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motorotam_v2/view/markalarSayfa/markalar_sayfa.dart';

class BannerWidget extends ConsumerWidget {

    const BannerWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 20, right: 20, bottom: 0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(238, 237, 233, 1),
                ),
                child: const Text(
                  'Tüm Markalar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Inter',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
              ),
            ),
            Padding(
              padding:  const EdgeInsets.only(top: 8.0, right: 12),
              child: CupertinoButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MarkalarSayfa()) );
                },
                color: const Color.fromRGBO(29, 31, 32, 1),
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 6),
                minSize: 20,
                child: const Text(
                  'view all..',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Inter',
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
