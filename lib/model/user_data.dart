class UserData {
  String? name;
  int? age;
  String? addr;
  String? profilePic;

  UserData({this.name, this.age, this.addr, this.profilePic});

  UserData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    addr = json['addr'];
    profilePic = json['ProfilePic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['age'] = age;
    data['addr'] = addr;
    data['ProfilePic'] = profilePic;
    return data;
  }
}
