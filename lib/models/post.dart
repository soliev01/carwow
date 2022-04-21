import 'package:equatable/equatable.dart';

class Post extends Equatable {
  const Post(
      {required this.id,
      required this.model,
      required this.name,
      required this.age});

  final int id;
  final String model;
  final String name;
  final int age;

  @override
  List<Object> get props => [id, model, name, age];
}
