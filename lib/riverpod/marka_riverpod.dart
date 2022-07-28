import 'package:flutter/cupertino.dart';
import 'package:motorotam_v2/model/marka_model.dart';

class MarkaRiverpod extends ChangeNotifier {
  List<MarkaModel> markalar = [];

  void init() {
    markalar.add(
      MarkaModel(
          markaAd: 'Yamaha',
          markaResim: 'assets/images/markalar_logo/yamaha.png'),
    );
    markalar.add(
      MarkaModel(
          markaAd: 'Honda',
          markaResim: 'assets/images/markalar_logo/honda.png'),
    );
    markalar.add(
      MarkaModel(
          markaAd: 'Kawasaki',
          markaResim: 'assets/images/markalar_logo/kawasaki.png'),
    );
    markalar.add(
      MarkaModel(
          markaAd: 'Suzuki',
          markaResim: 'assets/images/markalar_logo/suzuki.png'),
    );
    markalar.add(
      MarkaModel(
          markaAd: 'Ducati',
          markaResim: 'assets/images/markalar_logo/ducati.png'),
    );
    markalar.add(
      MarkaModel(
          markaAd: 'KTM',
          markaResim: 'assets/images/markalar_logo/ktm.png'),
    );
    markalar.add(
      MarkaModel(
          markaAd: 'Harley D',
          markaResim: 'assets/images/markalar_logo/harley_d.png'),
    );
    markalar.add(
      MarkaModel(
          markaAd: 'İndian',
          markaResim: 'assets/images/markalar_logo/indian.png'),
    );
    markalar.add(
      MarkaModel(
          markaAd: 'Hero',
          markaResim: 'assets/images/markalar_logo/hero.png'),
    );
    markalar.add(
      MarkaModel(
          markaAd: 'Jawa',
          markaResim: 'assets/images/markalar_logo/jawa.png'),
    );
    markalar.add(
      MarkaModel(
          markaAd: 'Vespa',
          markaResim: 'assets/images/markalar_logo/honda.png'),
    );
    markalar.add(
      MarkaModel(
          markaAd: 'GasGas',
          markaResim: 'assets/images/markalar_logo/vespa.png'),
    );
    markalar.add(
      MarkaModel(
          markaAd: 'TVS',
          markaResim: 'assets/images/markalar_logo/tvs.png'),
    );
  }
}
