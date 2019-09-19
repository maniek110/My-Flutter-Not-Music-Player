import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';
import 'package:simple_permissions/simple_permissions.dart';
void main()=>runApp(new MaterialApp(home: MusicView()));

class MusicView extends StatefulWidget{
  @override
  _MusicView createState()=>_MusicView();
}

class _MusicView extends State<MusicView>{
  List<Song> _songList;
  @override
  void initState(){
    super.initState();
    initMusic();
  }
  void initMusic() async{
    PermissionStatus permissionResult = await SimplePermissions.requestPermission(Permission. WriteExternalStorage);
      if (permissionResult == PermissionStatus.authorized){
      var list=await MusicFinder.allSongs();
      list=new List.from(list);
      setState(() {
        _songList=list;
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    Widget home(){
      return new Scaffold(
        backgroundColor: Colors.amberAccent,
        body: ListView.builder(
            itemCount: _songList.length,
            itemBuilder: (context,int index){
              return new ListTile(
                leading: new Icon(Icons.music_note),
                title: new Text(_songList[index].title),
              );
            }
        ),
      );
    }
    return home();
  }
}


