import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motorotam_v2/view/baseScaffold/base_scaffold.dart';
import 'package:responsive_framework/responsive_framework.dart';


void main() => runApp(ProviderScope(child: MyApp()));


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(845, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
          ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: 'MotorRotam v2',
      theme: ThemeData.from(
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Colors.black45,
              onPrimary: Colors.black45,
              secondary: Colors.black45,
              onSecondary: Colors.black45,
              error: Colors.redAccent,
              onError: Colors.red,
              background: Colors.white,
              onBackground: Colors.black45,
              surface: Colors.black45,
              onSurface: Colors.black45)),
      home: const BaseScaffold(),
    );
  }
}
