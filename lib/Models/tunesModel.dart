import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class itemModel {
  final Color color;
  final String sound;

  const itemModel({required this.color, required this.sound});

  playSound() {
    final player = AudioPlayer();

    player.play(AssetSource(sound));
  }
}
