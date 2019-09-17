import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHttp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_MyHttp();
}

class _MyHttp extends State<MyHttp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("XD"),
        ),
        body:
          Text(fetchpost().asStream().toString())
      )
    );


  }

}
Future<http.Response> fetchpost(){
  return http.get('https://jsonplaceholder.typicode.com/posts/1');
}