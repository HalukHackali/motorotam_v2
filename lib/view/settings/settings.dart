import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Settings extends ConsumerWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  Scaffold(
        body: ListView(
          children: const [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ayarlar",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        )
    );
  }
}