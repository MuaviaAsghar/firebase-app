class EmailAndPassword {
  String? name;
  String? email;
  String? username;

  EmailAndPassword({this.name, this.email, this.username});

  factory EmailAndPassword.fromJson(Map<String, dynamic> json) {
    return EmailAndPassword(
        name: json['name'], email: json['email'], username: json['username']);
  }

  Map<String, dynamic> toJson() {
    return {"title": name, "description": email, "username": username};
  }
}

const apiUrl = "https://crudcrud.com/api/3f344ea4e35b47e393050e46757388f2/todo";
