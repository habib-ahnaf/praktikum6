import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:praktikum6/models/soccer.dart';

Future<List<Soccer>> fetchAllSoccer() async {
  String domain = "http://127.0.0.1:8000";
  String requestURL = "$domain/api/v1/auth/artikle";

  final response = await http.get(Uri.parse(requestURL));
  print(response.statusCode);
  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);
    print(response.body);
    Iterable list = result;
    return list.map((soccer) => Soccer.fromJson(soccer)).toList();
  } else {
    throw Exception("Failed to load soccer!");
  }
}
