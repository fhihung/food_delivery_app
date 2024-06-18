import 'package:json_annotation/json_annotation.dart';

part 'm_user.g.dart';

@JsonSerializable()
class MUser {
  MUser(
    this.id,
    this.account,
    this.password,
    this.role,
    this.address,
    this.phonenumber,
  );

  factory MUser.fromJson(Map<String, dynamic> json) => _$MUserFromJson(json);
  final int id;
  final String account;
  final String password;
  final int role;
  final String address;
  final String phonenumber;
  // final DateTime createdAt;
  // final DateTime updatedAt;

  Map<String, dynamic> toJson() => _$MUserToJson(this);
}
