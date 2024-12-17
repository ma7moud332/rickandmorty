class Character {
  late int id;
  late String name;
  late String statusIfDeadOrAlive;
  late String species;
  late String gender;
  late String image;
  late List<dynamic> episode;

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    statusIfDeadOrAlive = json['status'];
    species = json['species'];
    gender = json['gender'];
    image = json['image'];
    episode = List<dynamic>.from(json['episode']);
  }
}
