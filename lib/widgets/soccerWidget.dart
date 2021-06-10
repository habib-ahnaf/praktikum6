import 'package:flutter/material.dart';
import 'package:praktikum6/models/soccer.dart';

class SoccerWidget extends StatelessWidget {
  final List<Soccer> soccers;

  SoccerWidget({this.soccers});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: soccers.length,
        itemBuilder: (context, index) {
          final soccer = soccers[index];

          return Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: Offset(
                      0.0,
                      10.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Align(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 125.0, vertical: 5.0),
                      child: Text(
                        soccer.judul,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Row(
                            children: [
                              Text(soccer.deskripsi),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        )
                      ],
                    ),
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ));
        });
  }
}
