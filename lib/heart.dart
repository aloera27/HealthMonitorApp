import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';

class  HeartScreen extends StatefulWidget {
  @override
  _HeartScreenState createState() => _HeartScreenState();
}

class _HeartScreenState extends State<HeartScreen> {
  final List<Feature> features = [
    Feature(
      title: "Patient1",
      color: Colors.blue,
      data: [0.3, 0.6, 0.8, 0.9, 1, 1.2],
    ),
    Feature(
      title: "Patient2",
      color: Colors.black,
      data: [1, 0.8, 0.6, 0.7, 0.3, 0.1],
    ),
    Feature(
      title: "Patient3",
      color: Colors.orange,
      data: [0.4, 0.2, 0.9, 0.5, 0.6, 0.4],
    ),
    Feature(
      title: "Patient4",
      color: Colors.red,
      data: [0.5, 0.2, 0, 0.3, 1, 1.3],
    ),
    Feature(
      title: "Patient5",
      color: Colors.green,
      data: [0.25, 0.6, 1, 0.5, 0.8, 1,4],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text("Patient Heart Rate Progression"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64.0),
            child: Text(
              "Heart Rate",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          LineGraph(
            features: features,
            size: Size(420, 450),
            labelX: ['1', '2', '3', '4', '5', '6', '7', '8', '9'],
            labelY: ['0 %', '25 %', '50 %', '100 %', ' 125 %'],
            showDescription: true,
            graphColor: Colors.black87,
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}