import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  User(
    this.email, {
    this.username,
  });


  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
  final String email;
  final String? username;


  Map<String, dynamic> toJson() => _$UserToJson(this);
}


