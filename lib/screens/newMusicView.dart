import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myworkingapp/screens/MyColors.dart';

class newMusicView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _newMusicView(),
    );
  }
}
class _newMusicView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Widget albumView(double maxHeight,double maxWidth){
      return new Container(
          color: MyColors.c2,
          height: maxHeight,
          child: Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0),child:
          Column(children: <Widget>[
            SizedBox(height: 16,),
            Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: <Widget>[
              Icon(Icons.music_note,size: 32,color: MyColors.c4,),
              Icon(Icons.library_music,size: 32,color: MyColors.c4),
              Icon(Icons.queue_music,size: 32,color: MyColors.c4),
            ],)
            ,
            SizedBox(height: 16,),
            Container(
              height: 30,
              width: maxWidth/1.5,
              decoration: BoxDecoration(color: MyColors.c4.withOpacity(0.7),borderRadius: BorderRadius.circular(8)),
              child: TextField(textAlignVertical: TextAlignVertical.center,showCursor: false,decoration: InputDecoration(border: InputBorder.none,contentPadding: EdgeInsets.all(5),alignLabelWithHint: true,hintText: "Looking for an album?"),),
            ),
            SizedBox(height: 16,),
            SizedBox(height:maxHeight/1.5, child:
            CustomScrollView(
              primary: false,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.all(20),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('1. album'),
                        color: Colors.green[100],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('2. album'),
                        color: Colors.green[200],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('3. album'),
                        color: Colors.green[300],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('4. album'),
                        color: Colors.green[400],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('5. album'),
                        color: Colors.green[500],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('6. album'),
                        color: Colors.green[600],
                      ),
                    ],
                  ),
                ),
              ],
            )
            ),

          ],),)
      );
    }

    double maxHeight=MediaQuery.of(context).size.height;
    double maxWidth=MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Fox'),
      home: Scaffold(
          body:albumView(maxHeight, maxWidth),

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

