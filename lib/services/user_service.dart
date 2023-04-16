import 'package:flutter_application_1/models/posts.dart';
import 'package:http/http.dart' as http;

import '../models/users.dart';

class UserService {
  Future<List<Users>> getServices() async {
    var client = http.Client();
    try {
      var response = await client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

      print(response.body);
      List<Users> posts = usersFromJson(response.body);
      return posts;
    } finally {
      client.close();
    }
  }
}
