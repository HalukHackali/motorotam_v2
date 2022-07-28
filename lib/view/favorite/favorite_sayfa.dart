import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motorotam_v2/riverpod/riverpod_managment.dart';

class Favorite extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  Scaffold(
        body: ListView(
          children:  [
            Center(
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child:  OutlinedButton(
                    onPressed: () {
                      ref.read(bottomNavBarRiverpod).setCurrentIndex(0);
                    },
                    child: const Text(
                      "Anasayfaya Git",
                    ),
                ),
              ),
            ),
          ],
        )
    );
  }
}