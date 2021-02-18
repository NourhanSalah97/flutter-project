import 'package:myProject/models/post.dart';
import 'package:dio/dio.dart';

class PostService {
   static String url = "https://jsonplaceholder.typicode.com/posts";


  static Future<List<Post>> getPosts() async {


    // ignore: deprecated_member_use
    List<Post> posts = new List();
    Response response;
    Dio dio = new Dio();
    response = await dio.get(url);
    var data = response.data;
    print(data);
    data.forEach((value) {
      posts.add(Post.fromJson(value));
    });

    return posts;
  }
}