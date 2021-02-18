import 'package:flutter/material.dart';
import 'myimage.dart';

class MyCard extends StatefulWidget {
   String imgLink;
  String text;
  String textbody;
  MyCard({this.imgLink, this.text,this.textbody});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Image.network(widget.imgLink),
              GestureDetector(child:Text(widget.text,style:TextStyle(
                fontSize:25,color:Colors.black),
                textAlign: TextAlign.center),
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>MyImage(text:widget.text))
                );
              }),
              Row(
             children:[
               Icon(
                 Icons.thumb_up,
                 color:Colors.black
               ),
               // ignore: deprecated_member_use
               FlatButton(onPressed: null,child:const Text('Like')),
                Icon(
                 Icons.comment_bank,
                 color:Colors.black
               ),
               // ignore: deprecated_member_use
               FlatButton(onPressed: null,child:const Text('Comment')),
             ]

              )


            ],
          ),
        ),
      ),
    );
  }
}