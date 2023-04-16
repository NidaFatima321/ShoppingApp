import 'dart:convert';

import 'package:flutter_application_1/models/courierShipment.dart';
import 'package:http/http.dart' as http;

import '../models/tokenModel.dart';

class CourierService {
  Future<CourierShipment> getCourier(String token) async {
    var client = http.Client();
    var headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };
    var body = jsonEncode({
      "courierId": "01916",
      "date": "2023-03-07",
      "station_id": "00592",
      "shipment_type": ""
    });

    final uri =
        Uri.http('172.16.0.63', '/LastMileAPIs/api/DS/getCourierShipment');

    try {
      var response = await client.post(uri, headers: headers, body: body);

      print(response.body);
      CourierShipment courier = courierShipmentFromJson(response.body);
      return courier;
    } finally {
      client.close();
    }
  }

  Future<Token> getToken() async {
    var client = http.Client();
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode(
        {"UserName": "OceanStick", "Password": "HmS3q5Nyxs@TpJys@&r"});

    final uri = Uri.http('172.16.0.63', '/LastMileAPIs/api/Auth/getToken');

    try {
      var response = await client.post(uri, headers: headers, body: body);

      print(response.body);
      return tokenFromJson(response.body);
    } finally {
      client.close();
    }
  }
}
