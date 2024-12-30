class UserModel{
  String? name;

  UserModel({this.name});

  UserModel.fromJson(Map<String,dynamic> json){
    name = json['name'];
  }
}