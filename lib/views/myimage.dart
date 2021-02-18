import 'package:flutter/material.dart';
class MyImage extends StatefulWidget {
  String imgLink;
  String text;
  MyImage({this.imgLink,this.text});
  @override
  _MyImageState createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Post Details')),
      body:Center(
        child:Padding(padding: const EdgeInsets.all(8),
      child:Text(widget.text, style: TextStyle(fontSize:25))
        ),
      )

    );
  }
}