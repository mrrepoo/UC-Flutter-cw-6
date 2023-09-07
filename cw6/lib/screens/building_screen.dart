import 'package:flutter/material.dart';
import 'package:cw6/models/building.dart';

class BuildingScreen extends StatelessWidget {
  const BuildingScreen({Key? key, required this.building}) : super(key: key);

  final Building building;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff14213d),
        title: Row(
          children: [
            Text('Kuwait City LandMark'),
          ],
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          height: 200,
          child: Image.network(
            building.imgURL,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Container(
            margin: EdgeInsets.all(50),
            child: Text(
              building.name,
              style: TextStyle(fontSize: 50),
            )),
        Container(
            child: Text(
          building.desc,
          style: TextStyle(fontSize: 20),
        ))
      ]),
    );
  }
}