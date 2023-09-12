class Character {
  String name;
  String description;

  Character.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        description = map['description'];
}
