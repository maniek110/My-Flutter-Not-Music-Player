import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class MyButton extends StatelessWidget{
  final GestureTapCallback onPressed;
  final Text text;
  MyButton({
    @required this.onPressed, this.text
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color.fromRGBO(252, 231, 184, 1),
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 100.0,
                child: Center(child: text)
              ),
              //text
            ],
          ),
      ),
      onPressed: onPressed,
      shape: StadiumBorder(),
    );
  }
}