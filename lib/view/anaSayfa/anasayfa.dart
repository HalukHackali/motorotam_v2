import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motorotam_v2/components/banner_widget.dart';
import 'package:motorotam_v2/components/markalar_widget_item.dart';
import 'package:motorotam_v2/components/motor_turleri_widget.dart';
import 'package:motorotam_v2/components/motor_widget_item.dart';
import 'package:motorotam_v2/riverpod/riverpod_managment.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Home extends ConsumerWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(motorRiverpod);
    var read = ref.read(motorRiverpod);
    var watch2 = ref.watch(markaRiverpod);
    var read2 = ref.read(markaRiverpod);
    var watch3 = ref.watch(turRiverpod);
    var read3 = ref.read(turRiverpod);

    double screenWidth = MediaQuery.of(context).size.width;
    final List<Map> myProducts =
    List.generate(10, (index) => {"id": index, "name": "Product $index"})
        .toList();
    return Scaffold(
        backgroundColor: const Color(0xFFEEEDEF),
        body: ListView(
        children: [
            const BannerWidget(),
           SizedBox(
            width: screenWidth,
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: read2.markalar.length,
              itemBuilder: (context, index) {
                return MarkalarWidget(marka: watch2.markalar[index]);
              },
            ),
          ),
           ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Container(
                  width: screenWidth,
                  height: ResponsiveValue(
                    context,
                    defaultValue: 6.0,
                    valueWhen: const [
                      Condition.smallerThan(
                        name: MOBILE,
                        value: 6.0,
                      ),
                      Condition.largerThan(
                        name: TABLET,
                        value: 12.0,
                      ),
                      Condition.largerThan(
                        name: DESKTOP,
                        value: 16.0,
                      ),
                    ],
                  ).value,
                  color: const Color.fromRGBO(29, 31, 32, 1),
                ),
              ),
            ],
          ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 0.0),
          child: SizedBox(
            width: screenWidth,
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: read3.turler.length ,
              itemBuilder: (context, index) {
                return MotorTurleri(tur: watch3.turler[index]);
              },
            ),
          ),
        ),
          /*  ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [


          ResponsiveRowColumnItem(
                rowFlex: 1,
                child: GrockList(
                  shrinkWrap: true,
                  itemCount: read.motorlar.length,
                  itemBuilder: (context, index) {
                    return MotorCardWidget(
                      model: watch.motorlar[index],
                    );
                  },
                ),
              ),


            ],
          ), */
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ResponsiveGridView.builder(

              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: read.motorlar.length,
                gridDelegate:  const ResponsiveGridDelegate(

                  maxCrossAxisExtent: 238,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index){
                  return MotorCardWidget(model: watch.motorlar[index]);
                },

            ),
          ),


        ],
      ),


    );
  }
}
