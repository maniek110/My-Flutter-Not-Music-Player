import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myworkingapp/screens/MyColors.dart';

class newMusicView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_newMusicView();
}
class _newMusicView extends State<newMusicView>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Fox'),
      home: Scaffold(
          body:Container(
                    color: Color(MyColors.teal_green),
                    height: MediaQuery.of(context).size.height,
                    child: Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0),child:
                    Column(children: <Widget>[
                      SizedBox(height: 16,),
                      Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: <Widget>[
                        Icon(Icons.music_note,size: 32,color: Color(MyColors.begonia),),
                        Icon(Icons.library_music,size: 32,color: Color(MyColors.begonia)),
                        Icon(Icons.queue_music,size: 32,color: Color(MyColors.begonia)),
                      ],)
                      ,
                      SizedBox(height: 16,),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width/1.5,
                        decoration: BoxDecoration(color: Color(MyColors.begonia).withOpacity(0.7),borderRadius: BorderRadius.circular(8)),
                        child: TextField(textAlignVertical: TextAlignVertical.center,showCursor: false,decoration: InputDecoration(border: InputBorder.none,contentPadding: EdgeInsets.all(5),alignLabelWithHint: true,hintText: "Looking for an album?"),),
                      ),
                      SizedBox(height: 16,),
                      
                    ],),)
                ),

      bottomNavigationBar: BottomAppBar(child:
      Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
        IconButton(icon: Icon(Icons.arrow_back),),
        IconButton(icon: Icon(Icons.shuffle),),
        IconButton(icon: Icon(Icons.play_arrow),),
        IconButton(icon: Icon(Icons.loop),),
        IconButton(icon: Icon(Icons.arrow_forward),),
      ],),
      )
      ),

    );
  }
}

