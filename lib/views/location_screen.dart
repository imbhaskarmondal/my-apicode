import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({this.planetDetails});
  final planetDetails;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // int i = 2;
  int id = 0;
  String name = "";
  String mass = "";
  int moons = 0;
  String rotation = "";
  String atmosphere = "";
  String desc = "";

  @override
  void initState() {
    super.initState();

    updateUI(widget.planetDetails);
  }

  void updateUI(dynamic planetData) {
    id = planetData[0]['id'];
    name = planetData[0]['planet_name'];
    mass = planetData[0]['mass'];
    moons = planetData[0]['confirmed_moons'];
    rotation = planetData[0]['rotations_period'];
    atmosphere = planetData[0]['atmosphere'];
    desc = planetData[0]['description'];

    print(desc);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          // child: Text('Planet Name: $name'),
          child: ElevatedButton(
        child: Text('Planet Name: $atmosphere'),
        onPressed: () {
          // i = 2;
          print('Pressed');
        },
      )),
    ));
  }
}
