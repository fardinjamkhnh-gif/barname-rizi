import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 0)
class Task extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  @HiveField(2)
  DateTime createdAt;

  @HiveField(3)
  bool isCompleted;

  @HiveField(4)
  DateTime? reminderTime;

  Task({
    required this.title,
    this.description = '',
    required this.createdAt,
    this.isCompleted = false,
    this.reminderTime,
  });
}
