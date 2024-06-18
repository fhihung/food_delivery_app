// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MUser _$MUserFromJson(Map<String, dynamic> json) => MUser(
      (json['id'] as num).toInt(),
      json['account'] as String,
      json['password'] as String,
      (json['role'] as num).toInt(),
      json['address'] as String,
      json['phonenumber'] as String,
    );

Map<String, dynamic> _$MUserToJson(MUser instance) => <String, dynamic>{
      'id': instance.id,
      'account': instance.account,
      'password': instance.password,
      'role': instance.role,
      'address': instance.address,
      'phonenumber': instance.phonenumber,
    };
