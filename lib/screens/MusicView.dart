import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';
void main()=>runApp(new MaterialApp(home: MusicView()));

class MusicView extends StatefulWidget{
  @override
  _MusicView createState()=>_MusicView();
}

class _MusicView extends State<MusicView>{
  MusicFinder audioPlayer;
  @override
  void initState() {
    super.initState();
    audioPlayer = new MusicFinder();
    getSongs();
  }
  @override
  void dispose() {
    audioPlayer=null;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }

  Future getSongs() async{
    List<Song> songs;
    try {
      songs = await MusicFinder.allSongs();
    }catch(x){
      print(x.toString());
    }
    if(songs.isNotEmpty) audioPlayer.play(songs.first.uri);
    else print("NIMA");
  }

}


