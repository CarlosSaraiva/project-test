import 'package:json_annotation/json_annotation.dart';
import 'package:miccional_app/app/domain/entities/user.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends User {
  UserModel({
    @JsonKey(required: false) String id,
    DateTime createAt,
    String name,
    String avatar,
  }) : super(createAt: createAt, avatar: avatar, name: name, id: id);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
