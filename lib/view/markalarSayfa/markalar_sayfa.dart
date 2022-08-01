import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motorotam_v2/riverpod/riverpod_managment.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class MarkalarSayfa extends ConsumerWidget {
  const MarkalarSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(markaRiverpod);
    var read = ref.read(markaRiverpod);
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text("Tüm Markalar"),
        leading: CupertinoNavigationBarBackButton(
          onPressed: () {
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
                childAspectRatio: 0.9,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8),
            itemCount: read.markalar.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Image(
                        image: AssetImage(watch.markalar[index].markaResim),
                        fit: BoxFit.fitWidth,
                        width: 60,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(bottom: ResponsiveValue(
                        context,
                        defaultValue: 4.0,
                        valueWhen:  [
                          const Condition.smallerThan(
                            name: MOBILE,
                            value: 4.0,
                          ),
                          const Condition.largerThan(
                            name: TABLET,
                            value: 6.0,
                          )
                        ],
                      ).value!.toDouble(),
                      ),
                      child: Text(
                        watch.markalar[index].markaAd,
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Inter',
                          fontSize: ResponsiveValue(
                            context,
                            defaultValue: 14.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 12.0,
                              ),
                              Condition.largerThan(
                                name: TABLET,
                                value: 20.0,
                              )
                            ],
                          ).value!.toDouble(),
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
