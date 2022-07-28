import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motorotam_v2/components/bottom_navbar.dart';
import 'package:motorotam_v2/riverpod/bottom_navbar_riverpod.dart';
import 'package:motorotam_v2/riverpod/riverpod_managment.dart';

class BaseScaffold extends ConsumerStatefulWidget {
  const BaseScaffold({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends ConsumerState<BaseScaffold> {

  @override
  void initState() {
    ref.read(motorRiverpod).init();
    ref.read(markaRiverpod).init();
    ref.read(turRiverpod).init();
    ref.read(bannerRiverpod).init();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(bottomNavBarRiverpod);
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: appbarBuild(watch),
      body: watch.body(),
    );
  }

  CupertinoNavigationBar appbarBuild(BottomNavBarRiverpod watch) {
    return CupertinoNavigationBar(
      middle: Text(
        watch.appbarTitle(),
      ),
    );
  }


}
