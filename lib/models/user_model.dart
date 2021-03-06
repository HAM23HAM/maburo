class UserModel {
  int id;
  String name;
  String email;
  String username;
  String profilPhotourl;
  String token;

  UserModel(
      {this.id,
      this.name,
      this.email,
      this.username,
      this.profilPhotourl,
      this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profilPhotourl = json['profile_photo_url'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': profilPhotourl,
      'token': token,
    };
  }
}
