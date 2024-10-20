import 'package:flutter/material.dart';
import 'package:tunes/Models/tunesModel.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
  itemModel tune;
  String sound;
  Item({super.key, required this.tune, required this.sound});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
          height: 110,
          width: double.infinity,
        ),
      ),
    );
  }
}
