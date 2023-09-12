class Character {
  String name;
  String description;
  String imagePath;

  Character.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        description = map['description'],
        imagePath = '';
}
