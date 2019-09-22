import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';
import 'package:myworkingapp/screens/SongData.dart';
import 'package:simple_permissions/simple_permissions.dart';
void main()=>runApp(new MaterialApp(home: MusicView()));

class MusicView extends StatefulWidget{
  @override
  _MusicView createState()=>_MusicView();
}

class _MusicView extends State<MusicView>{
  SongData songData;
  MusicFinder musicFinder;
  bool _isLoading = true;

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

    setState(() {
      songData = new SongData(songs);
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget home(){
      return new Scaffold(
        backgroundColor: Colors.amberAccent,
        body: ListView.builder(
            itemCount: songData.length,
            itemBuilder: (context,int index){
              return new ListTile(
                leading: new IconButton(icon: new Icon(Icons.music_note), onPressed: ()=>play(songData.songs[index]),),
                title: new Text(songData.songs[index].title),

              );
            }
        ),
      );
    }
    return home();
  }

  Future play(Song s) async{
    final result=await musicFinder.play(s.uri);
    //songData.audioPlayer.play(songData.songs[1].uri);
  }
}


