import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motorotam_v2/riverpod/riverpod_managment.dart';

class MarkalarSayfa extends ConsumerWidget {

   const MarkalarSayfa({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(markaRiverpod);
    var read = ref.read(markaRiverpod);
    return Scaffold(
      appBar:CupertinoNavigationBar(
          middle:const Text("Tüm Markalar"),
        leading: CupertinoNavigationBarBackButton(
          onPressed: (){
            Navigator.pop(context);
          },
          color: CupertinoColors.label,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            childAspectRatio: 1,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),
        itemCount: read.markalar.length,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0.0, left: 5, right: 0, bottom: 0),
                  child: GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      width: 60,
                      height: 80,
                      decoration: const BoxDecoration(),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 65,
                            left: 0,
                            child: Text(
                              watch.markalar[index].markaAd,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Inter',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                height: 1,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration:  BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        watch.markalar[index].markaResim),
                                    fit: BoxFit.fitWidth),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        ),
      ),
    );
  }
}
