import 'package:flutter_application_1/models/posts.dart';
import 'package:http/http.dart' as http;

import '../models/shoppingModel.dart';

class ShoppingService {
  Future<Shopping> getItems() async {
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse('https://dummyjson.com/products/category/smartphones'),
      );

      print(response.body);
      Shopping shopping = shoppingFromJson(response.body);
      return shopping;
    } finally {
      client.close();
    }
  }
  Future<Shopping> getLaptops() async {
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse('https://dummyjson.com/products/category/laptops'),
      );

      print(response.body);
      Shopping shopping = shoppingFromJson(response.body);
      return shopping;
    } finally {
      client.close();
    }
  }
  Future<Shopping> getGrocery() async {
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse('https://dummyjson.com/products/category/groceries'),
      );

      print(response.body);
      Shopping shopping = shoppingFromJson(response.body);
      return shopping;
    } finally {
      client.close();
    }
  }
  Future<Shopping> getFrag() async {
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse('https://dummyjson.com/products/category/fragrances'),
      );

      print(response.body);
      Shopping shopping = shoppingFromJson(response.body);
      return shopping;
    } finally {
      client.close();
    }
  }
  Future<Shopping> getskin() async {
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse('https://dummyjson.com/products/category/skincare'),
      );

      print(response.body);
      Shopping shopping = shoppingFromJson(response.body);
      return shopping;
    } finally {
      client.close();
    }
  }
}
