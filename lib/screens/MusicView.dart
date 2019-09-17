import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';

class MusicView extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_MusicView();
}

class _MusicView extends State<MusicView>{
  @override
  MusicFinder audioPlayer = new MusicFinder();
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp();
  }
}