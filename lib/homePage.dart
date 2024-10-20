import 'package:flutter/material.dart';
import 'package:tunes/Models/tunesModel.dart';
import 'package:tunes/item.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  final List<itemModel> tunes = const [
    itemModel(color: Colors.red, sound: "note1.wav"),
    itemModel(color: Colors.orange, sound: "note2.wav"),
    itemModel(color: Colors.yellow, sound: "note3.wav"),
    itemModel(color: Colors.green, sound: "note4.wav"),
    itemModel(color: Colors.greenAccent, sound: "note5.wav"),
    itemModel(color: Colors.lightBlue, sound: "note6.wav"),
    itemModel(color: Colors.purple, sound: "note7.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(
          child: Text(
            "flutter tunes",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => Item(
                tune: e,
                sound: '',
              ),
            )
            .toList(),

        //getTuneItem(),
      ),
    );
  }

  // List<item> getTuneItem() {
  //   List<item> items = [];

  //   for (var color in tunesColor) {
  //     items.add(item(color: color));
  //   }
  //   return items;
  // }
}
