import 'package:uuid/uuid.dart';
const uuid = Uuid();

class Place {
  final String name;
  final String id;

  Place({required this.name}) : id = uuid.v4();
}