// To parse this JSON data, do
//
//     final planet = planetFromJson(jsonString);

import 'dart:convert';

List<Planet> planetFromJson(String str) =>
    List<Planet>.from(json.decode(str).map((x) => Planet.fromJson(x)));

String planetToJson(List<Planet> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Planet {
  String planetName;
  String mass;
  int? confirmedMoons;
  String? rotationsPeriod;
  String atmosphere;
  String? rotationPeriod;

  Planet({
    required this.planetName,
    required this.mass,
    this.confirmedMoons,
    this.rotationsPeriod,
    required this.atmosphere,
    this.rotationPeriod,
  });

  factory Planet.fromJson(Map<String, dynamic> json) => Planet(
        planetName: json["planet_name"],
        mass: json["mass"],
        confirmedMoons: json["confirmed_moons"],
        rotationsPeriod: json["rotations_period"],
        atmosphere: json["atmosphere"],
        rotationPeriod: json["rotation_period"],
      );

  Map<String, dynamic> toJson() => {
        "planet_name": planetName,
        "mass": mass,
        "confirmed_moons": confirmedMoons,
        "rotations_period": rotationsPeriod,
        "atmosphere": atmosphere,
        "rotation_period": rotationPeriod,
      };
}
