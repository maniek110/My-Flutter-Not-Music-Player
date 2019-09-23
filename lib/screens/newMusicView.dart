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
    return Scaffold(
      backgroundColor: Color(MyColors.boysenberry),
      body:Row(
        children: <Widget>[
          Expanded(
            child: Container(
                color: Colors.blue[200],
                height: MediaQuery.of(context).size.height,
                child: ListView(padding: EdgeInsets.fromLTRB(0, 64, 0, 0),children: <Widget>[
                  SizedBox(
                    height: 30,
                    width: MediaQuery.of(context).size.width/3,
                    child: Container(
                      color: Color(MyColors.redwood),

                    ),
                  ),
                ],)

              ,
            ),

          ),
          Container(
            width: 70.0,
            color: Colors.purple[300],
          )
        ],
      ));
  }
}

