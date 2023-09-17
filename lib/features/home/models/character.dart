import 'package:flutter/material.dart';

class Character {
  String name;
  String description;
  String imagePath;
  Color backgroundColor;

  Character.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        description = map['description'],
        imagePath = '',
        backgroundColor = Colors.transparent;
}
