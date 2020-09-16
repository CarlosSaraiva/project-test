import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final DateTime createAt;
  final String name;
  final String avatar;

  User({this.id, this.createAt, this.name, this.avatar});

  @override
  List<Object> get props => [id, createAt, name, avatar];
}
