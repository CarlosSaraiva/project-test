// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as String,
    createAt: json['createAt'] == null
        ? null
        : DateTime.parse(json['createAt'] as String),
    name: json['name'] as String,
    avatar: json['avatar'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'createAt': instance.createAt?.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
    };
