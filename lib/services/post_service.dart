import 'package:flutter_application_1/models/posts.dart';
import 'package:http/http.dart' as http;

class PostService {
  Future<List<Posts>> getPosts() async {
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );

      print(response.body);
      List<Posts> posts = postsFromJson(response.body);
      return posts;
    } finally {
      client.close();
    }
  }
}
