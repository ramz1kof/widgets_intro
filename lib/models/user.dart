class User {
  String name;
  String surname;
  String avatar;
  int age;
  String description;

  User(this.name, this.surname, this.age, {this.avatar, this.description});

  User.fromJson(Map<String, dynamic> jsonUser)
      : name = jsonUser['name'],
        surname = jsonUser['surname'],
        avatar = jsonUser['avatar'],
        age = jsonUser['age'],
        description = jsonUser['description'];
}
