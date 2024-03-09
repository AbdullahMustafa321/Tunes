import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
class ItemModel{
  final Color color;
  final String sound;
  const ItemModel(this.color, this.sound);
  void playSound(){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}