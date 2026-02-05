class UserModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? password;
  String? accessToken;
  UserModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.password,
    this.accessToken,
  });

  //get from json
  UserModel.fromJOSN(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    accessToken = json['accessToken'];
  }

  //insert to json
  Map<String, dynamic> json() => {
    'id': id,
    'name': name,
    'email': email,
    'phone': phone,
    'password': password,
  };
}
