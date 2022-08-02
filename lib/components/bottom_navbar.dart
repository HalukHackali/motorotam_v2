import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motorotam_v2/riverpod/riverpod_managment.dart';


class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(bottomNavBarRiverpod);
    var read = ref.read(bottomNavBarRiverpod);
    return BottomNavigationBar(
      selectedIconTheme: const IconThemeData(color: CupertinoColors.label),
      unselectedIconTheme: const IconThemeData(color: CupertinoColors.inactiveGray),
      selectedItemColor: CupertinoColors.label ,
      items: read.items,
      currentIndex: watch.currentIndex,
      onTap: (index) => read.setCurrentIndex(index),
    );
  }
}