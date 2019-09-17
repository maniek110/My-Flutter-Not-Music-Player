import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myworkingapp/screens/MyHttp.dart';

class ListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_ListPage();
}

class _ListPage extends State<ListPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: Colors.white70,fontFamily: 'Virtuous'),
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
                    MaterialPageRoute(builder: (context)=>MyHttp())),
              ),new RaisedButton(
                child: Text("Recipies"),
                onPressed: ()=>Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MyHttp())),
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