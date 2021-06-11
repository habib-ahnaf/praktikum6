// import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:praktikum6/models/soccer.dart';
import 'package:praktikum6/utils/api.dart';

class SoccerWidget extends StatefulWidget {
  final List<Soccer> soccers;

  SoccerWidget({this.soccers});

  @override
  _SoccerWidgetState createState() => _SoccerWidgetState();
}

class _SoccerWidgetState extends State<SoccerWidget> {
  List<Soccer> _soccer = new List<Soccer>();
  Future<List<Soccer>> soccer;

  @override
  void initState() {
    super.initState();
    soccer = fetchAllSoccer();
  }

  // void _populateAllSoccer() async {
  //   final soccer = await _fetchAllSoccer();
  //   setState(() {
  //     _soccer = soccer;
  //   });
  // }

  // Future<List<Soccer>> _fetchAllSoccer() async {
  //   final response =
  //       await http.get("http://127.0.0.1:8000/api/v1/auth/artikle");

  //   if (response.statusCode == 200) {
  //     final result = jsonDecode(response.body);
  //     Iterable list = result;
  //     return list.map((soccer) => Soccer.fromJson(soccer)).toList();
  //   } else {
  //     throw Exception("Failed to load soccer!");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Soccer>>(
      future: soccer,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {}
        return Scaffold(
          body: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemCount: widget.soccers.length,
            itemBuilder: (context, index) {
              final soccer = widget.soccers[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            color: Colors.blue,
                          ),
                          width: double.infinity,
                          // color: Colors.blue,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              soccer.judul,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                            color: Colors.red,
                          ),
                          width: double.infinity,
                          padding: EdgeInsets.all(15.0),
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                soccer.deskripsi,
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
