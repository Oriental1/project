class UserData {
  String? name;
  int? contact;

  String? profilePic;

  UserData({this.name, this.contact, this.profilePic});

  UserData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    contact = json['age'];
    profilePic = json['ProfilePic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['contact'] = contact;
    data['ProfilePic'] = profilePic;
    return data;
  }
}
