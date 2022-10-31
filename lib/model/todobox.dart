import 'package:hive/hive.dart';
part 'todobox.g.dart';
@HiveType(typeId: 0)
class todobox extends HiveObject{
@HiveField(0)
String name;

@HiveField(1)
String description;

@HiveField(2)
DateTime date;

todobox({required this.name,required this.description,required this.date});
}