import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motorotam_v2/components/detail_widgets/motor_detail_widget.dart';
import 'package:motorotam_v2/components/detail_widgets/properties_motor_card.dart';
import 'package:motorotam_v2/components/motor_turleri_widget.dart';
import 'package:motorotam_v2/model/motor_model.dart';
import 'package:motorotam_v2/riverpod/riverpod_managment.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Detay extends ConsumerWidget {
  MotorModel model;

    Detay({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(motorRiverpod);
    var read = ref.read(motorRiverpod);
    var watch3 = ref.watch(turRiverpod);
    var read3 = ref.read(turRiverpod);

    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFEEEDEF),
      appBar:  appbarBuild(),
      body: ListView(
        children: [
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
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
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
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: MotorDetailWidget(
                  motorResim: model.resim,
                  motorResimRight:model.resim,
                  motorResimLeft: model.resim,)
              ),


            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            height: 40,
            color: const Color.fromRGBO(29, 31, 32, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    model.fiyat,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(model.yildiz.toString(),
                          style: TextStyle(color: Colors.amber, fontSize: 18)),
                    ],
                  ),
                ),
                const Text("4260 Reviews ",
                    style: TextStyle(color: Colors.white, fontSize: 14)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Temel Özellikler",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    motorRenkSecici(
                      renk: const Color.fromRGBO(255, 81, 6, 1),
                      border: Colors.black12,
                      shadowRenk: Colors.black26,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    motorRenkSecici(
                      renk: Colors.white,
                      border: Colors.black12,
                      shadowRenk: Colors.black26,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              PropertiesMotorCard(
                motorHacim: model.motorHacmi,
                motorPower: model.motorPower,
                motorFren: model.frenDiskCap,
                motorHiz: model.motorHiz,
                motorTork: model.motorTork,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 20),
            child: Text(
              "Ayrıntılı Özellikler",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          ozellikBasliklari(baslik: 'Motor'),
          motorOzellikleri(anahtar: 'Motor Tipi : ', deger: model.motorTipi),
          motorOzellikleri(anahtar: 'Motor Hacmi: ', deger: model.motorHacmi),
          motorOzellikleri(anahtar: 'Güç: ', deger: model.motorPower),
          motorOzellikleri(anahtar: 'Şanzıman: ', deger: model.sanziman),
          motorOzellikleri(anahtar: 'Debriyaj: ', deger: model.debriyaj),
          motorOzellikleri(anahtar: 'Soğutma: ', deger: model.sogutma),
          motorOzellikleri(
              anahtar: 'Ateşleme Tertibatı: ', deger: model.atesleme),
          const Divider(
            indent: 14,
            endIndent: 14,
            height: 30,
            thickness: 5,
          ),
          ozellikBasliklari(baslik: 'Yürüyen Aksam'),
          yuruyenAksamOzellikleri(anahtar: 'Şasi: ', deger: model.sasiTipi),
          yuruyenAksamOzellikleri(
              anahtar: 'Ön Amortisör: ', deger: model.onAmortisor),
          yuruyenAksamOzellikleri(
              anahtar: 'Arka Amortisör: ', deger: model.arkaAmortisor),
          yuruyenAksamOzellikleri(anahtar: 'Ön Fren: ', deger: model.onFren),
          yuruyenAksamOzellikleri(anahtar: 'Arka Fren: ', deger: model.arkaFren),
          yuruyenAksamOzellikleri(
              anahtar: 'Fren Diskleri Çap Ön/Arka: ', deger: model.frenDiskCap),
          yuruyenAksamOzellikleri(anahtar: 'Zincir: ', deger: model.zincir),
          yuruyenAksamOzellikleri(
              anahtar: 'Ön Lastik Ebat: ', deger: model.onLastikCap),
          yuruyenAksamOzellikleri(
              anahtar: 'Arka Lastik: ', deger: model.arkaLastikCap),
          yuruyenAksamOzellikleri(
              anahtar: 'Oturma Yüksekliği: ', deger: model.yukseklik + ' mm'),
          yuruyenAksamOzellikleri(
              anahtar: 'Yakıt deposu: ', deger: model.yakitDeposu + ' Litre'),
          yuruyenAksamOzellikleri(
              anahtar: 'Yakıtsız ağırlık yaklaşık: ',
              deger: model.agirlik + ' kg'),
          yuruyenAksamOzellikleri(
              anahtar: 'Ortalama Yakıt Tüketimi: ', deger: model.ortalamaYakit),




        ],
      ),
    );
  }
  Container motorRenkSecici(
      {required Color renk, required Color shadowRenk, required Color border}) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              color: shadowRenk,
              offset: const Offset(1, 1),
              blurRadius: 3,
            )
          ],
          border: Border.all(
            color: border,
          ),
          color: renk,
          shape: BoxShape.circle),
    );
  }

  Padding yuruyenAksamOzellikleri(
      {required String anahtar, required String deger}) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        left: 40,
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              text: anahtar,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: deger,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding ozellikBasliklari({required String baslik}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(
            Icons.workspaces_filled,
            size: 18.0,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            baslik,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
  Padding motorOzellikleri({required String anahtar, required String deger}) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        left: 40,
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              text: anahtar,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: deger,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

CupertinoNavigationBar appbarBuild() {
  return const CupertinoNavigationBar(
    middle: Text('KTM Duke 250'),

  );
}