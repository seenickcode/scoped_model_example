import '../utils.dart';

class Location {
  final int id;
  final String name;

  Location(this.id, this.name);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Location "${Utils.randomString(10)}"'),
      Location(2, 'Location "${Utils.randomString(10)}"'),
      Location(3, 'Location "${Utils.randomString(10)}"')
    ];
  }
}
