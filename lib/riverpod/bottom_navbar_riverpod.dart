import 'package:flutter/cupertino.dart';
import 'package:motorotam_v2/view/anaSayfa/anasayfa.dart';
import 'package:motorotam_v2/view/favorite/favorite_sayfa.dart';
import 'package:motorotam_v2/view/markalarSayfa/markalar_sayfa.dart';
import 'package:motorotam_v2/view/settings/settings.dart';

class BottomNavBarRiverpod extends ChangeNotifier {

  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: "Anasayfa",
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.heart),
      label: "Favoriler",
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.settings),
      label: "Ayarlar",
    ),
  ];

  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  String appbarTitle() {
    switch (currentIndex) {
      case 0:
        return "Anasayfa";
      case 1:
        return "Favoriler";
      case 2:
        return "Ayarlar";
      default:
        return "Boş";
    }
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return  Home();
      case 1:
        return Favorite();
      case 2:
        return const Settings();
      default:
        return  Home();
    }
  }
}
