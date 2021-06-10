import 'package:flutter/material.dart';
import 'package:praktikum6/models/soccer.dart';

class SoccerWidget extends StatefulWidget {
  final List<Soccer> soccers;

  SoccerWidget({this.soccers});

  @override
  _SoccerWidgetState createState() => _SoccerWidgetState();
}

class _SoccerWidgetState extends State<SoccerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: 5,
        itemBuilder: (context, index) {
          // final soccer = 10;
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
                          's',
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
                            'soccer.deskripsi',
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
  }
}
