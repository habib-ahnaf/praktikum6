import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:praktikum6/models/soccer.dart';
import 'package:http/http.dart' as http;
import 'package:praktikum6/screens/loginPage.dart';
import 'package:praktikum6/widgets/soccerWidget.dart';

void main() {
  runApp(MyApp());
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soccer News',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyLoginPage(),
    );
  }
}

// yang dibawah gadipake, udah di pindah di soccerWidget
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Soccer> _soccer = new List<Soccer>();

  @override
  void initState() {
    super.initState();
    _populateAllSoccer();
  }

  void _populateAllSoccer() async {
    final soccer = await _fetchAllSoccer();
    setState(() {
      _soccer = soccer;
    });
  }

  Future<List<Soccer>> _fetchAllSoccer() async {
    final response =
        await http.get("http://localhost:8000/api/v1/auth/artikle");

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result;
      return list.map((soccer) => Soccer.fromJson(soccer)).toList();
    } else {
      throw Exception("Failed to load soccer!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Soccer News",
        home: Scaffold(
            appBar: AppBar(title: Text("Soccer")),
            body: SoccerWidget(soccers: _soccer)));
  }
}
