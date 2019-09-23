import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myworkingapp/screens/MusicView.dart';
import 'package:myworkingapp/screens/MyColors.dart';
import 'package:myworkingapp/screens/MyHttp.dart';
import 'package:myworkingapp/screens/newMusicView.dart';

class ListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_ListPage();
}

class _ListPage extends State<ListPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: Color(MyColors.old_rose).withOpacity(1),fontFamily: 'Virtuous'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Text("List of my sample stuff",textScaleFactor: 2,),
              ),
              new RaisedButton(
                child: Text("Music Player"),
                onPressed: ()=>Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MusicView())),
              ),new RaisedButton(
                child: Text("Recipies"),
                onPressed: ()=>Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>newMusicView())),
              ),new RaisedButton(
                child: Text("Some Magic"),
                onPressed: ()=>Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MyHttp())),
              ),
            ],
          )
      ),
    );


  }

}