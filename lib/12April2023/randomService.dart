import 'package:flutter_application_1/models/posts.dart';
import 'package:http/http.dart' as http;

import '../models/randomModel.dart';
import '../models/users.dart';

class RandomService {
  Future<RandomUser> getRandom() async {
    var client = http.Client();
    try {
      var response =
          await client.get(Uri.parse('https://randomuser.me/api/?results=10'));

      print(response.body);
      RandomUser posts = randomUserFromJson(response.body);
      return posts;
    } finally {
      client.close();
    }
  }
}
