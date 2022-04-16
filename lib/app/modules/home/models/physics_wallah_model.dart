import 'package:meta/meta.dart';
import 'dart:convert';

List<PhysicsWallah> physicsWallahFromJson(String str) => List<PhysicsWallah>.from(json.decode(str).map((x) => PhysicsWallah.fromJson(x)));

String physicsWallahToJson(List<PhysicsWallah> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PhysicsWallah {
  PhysicsWallah({
    required this.id,
    required this.name,
    required this.subjects,
    required this.qualification,
    required this.profileImage,
  });

  int id;
  String name;
  List<String> subjects;
  List<String> qualification;
  String profileImage;

  factory PhysicsWallah.fromJson(Map<String, dynamic> json) => PhysicsWallah(
    id: json["id"],
    name: json["name"],
    subjects: List<String>.from(json["subjects"].map((x) => x)),
    qualification: List<String>.from(json["qualification"].map((x) => x)),
    profileImage: json["profileImage"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "subjects": List<dynamic>.from(subjects.map((x) => x)),
    "qualification": List<dynamic>.from(qualification.map((x) => x)),
    "profileImage": profileImage,
  };
}
