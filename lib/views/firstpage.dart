import 'package:flutter/material.dart';
import 'mycard.dart';
import 'package:myProject/services/postService.dart';
import 'package:myProject/models/post.dart';
class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<String> imgs =[
      'https://picsum.photos/200',
      'https://picsum.photos/200',
      'https://picsum.photos/200'
  ];
  // ignore: deprecated_member_use
  List<Post> postList= new List();
  @override
  void initState() {
    super.initState();
    getPostFromServer();
  }
  @override
  void dispose(){
    super.dispose();
  }
  getPostFromServer() async {
    postList= await PostService.getPosts();
    setState(() {

        });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Posts",
            style: TextStyle(color: Colors.white,fontSize: 30),
          ),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: postList.length,
            itemBuilder: (BuildContext context, int index) {
              return MyCard(
                imgLink: imgs[index],
                text: postList[index].title,
                textbody:postList[index].body
              );
            })
        );
  }
}