import 'dart:io';
import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';
import 'package:myworkingapp/screens/SongData.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main()=>runApp(new MaterialApp(home: MusicView()));

class MusicView extends StatefulWidget{
  @override
  _MusicView createState()=>_MusicView();
}

class _MusicView extends State<MusicView>{
  SongData songData;
  MusicFinder musicFinder;
  bool _isLoading = true;
  Song currentSong;

  @override
  void initState() {
    super.initState();
    initPlatformState();
    musicFinder=new MusicFinder();
  }

  @override
  void dispose() {
    super.dispose();
    songData.audioPlayer.stop();
  }
    initPlatformState() async {
    _isLoading = true;
    var songs;
    try {
      songs = await MusicFinder.allSongs();
    } catch (e) {
      print("Failed to get songs: '${e.message}'.");
    }
    if (!mounted) return;
    //print(songs.length);
    print("XD");
    setState(() {
      songData = new SongData(songs);
      print(songData.length);
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget home(){
      return new Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(title: Center(child: ButtonBar(children: <Widget>[IconButton(icon: Icon(Icons.pause),onPressed: ()=>pause(currentSong),)],),),),
        body: ListView.builder(
            itemCount: songData.length,
            itemBuilder: (context,int index){
              return new ListTile(
                leading: songData.songs[index].albumArt!=null ? new Image.file(File.fromUri(Uri.parse(songData.songs[index].albumArt)),scale: 1) : null,
                title: new Text(songData.songs[index].title),
                  onTap: ()=>play(songData.songs[index])
              );
            }
        ),
      );
    }
    return home();
  }

  Future play(Song s) async{
    final result=await musicFinder.play(s.uri);
    currentSong=s;
    songData.audioPlayer.play(s.uri);
  }
  Future pause(Song s) async{
    final result=await musicFinder.stop();

  }
}


