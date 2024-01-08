import 'enum/place_category.dart';

class Place {
  final String title;

  final String image;

  final PlaceCategory category;

  Place({required this.title, required this.image, required this.category});
}