import 'enum/accommodation_category.dart';

class Accommodation{
  final String title;

  final String image;

  final String info;

  final String location;

  final AccommodationCategory category;

  Accommodation({required this.title, required this.image, required this.info, required this.location, required this.category});
}