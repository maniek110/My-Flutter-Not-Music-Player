import 'package:flutter/material.dart';
import 'package:myworkingapp/screens/ListPage.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: new Image.asset("assets/images/title.jpg",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        onTap: ()=>Navigator.push(context,
            MaterialPageRoute(builder: (context)=>ListPage())
        ),
      ),

    );
  }

}
