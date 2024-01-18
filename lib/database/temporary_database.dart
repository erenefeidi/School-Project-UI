
import 'package:edirne_gezgini_ui/model/enum/base_place_category.dart';

import '../model/accommodation.dart';
import '../model/enum/accommodation_category.dart';
import '../model/enum/place_category.dart';
import '../model/favorite.dart';
import '../model/place.dart';

class TemporaryDatabase{
  //create a singleton to access this class statically
  static final _singleton = TemporaryDatabase._internal();

  factory TemporaryDatabase(){
    return _singleton;
  }

  TemporaryDatabase._internal();

  List<Place> places = [
    Place(title: "Selimiye Camii", image: "images/selimiye.jpg", category: PlaceCategory.historical),
    Place(title: "Sultan II. Beyazid Külliyesi", image: "images/külliye1.jpg", category: PlaceCategory.historical),
    Place(title: "Karaağaç", image: "images/tren garı.jpg", category: PlaceCategory.historical),
    Place(title: "Meriç Köprüsü", image: "images/meric.jpg", category: PlaceCategory.historical),
    Place(title: "Üç Şerefeli Camii", image: "images/üçşerefelicamii.jpg", category: PlaceCategory.historical),
    Place(title: "Lozan Anıtı", image: "images/lozan-anıtı.jpg", category: PlaceCategory.historical),
    Place(title: "Edirne Arkeoloji ve Etnografya Müzesi", image: "images/etnografya.jpg", category: PlaceCategory.museum),
    Place(title: "Türk ve İslam Eserleri Müzesi", image: "images/islam.jpg", category: PlaceCategory.museum),
    Place(title: "Edirne Kent Müzesi", image: "images/edirne-kent-muzesi.jpg", category: PlaceCategory.museum),
    Place(title: "Selimiye Vakfı Müzesi", image: "images/selimiyevakıf.jpeg", category: PlaceCategory.museum),
    Place(title: "Fatih Sultan Mehmet Müzesi", image: "images/fsm.jpg", category: PlaceCategory.museum),
    Place(title: "Balkan Savaşları Müzesi", image: "images/balkansavaşları.jpg", category: PlaceCategory.museum)
  ];

  List<Accommodation> hotels = [
    Accommodation(title: "Hilly Otel", image: "images/hilly-hotel.jpg", info: "Edirne bölgesinde, üst kalite, spa, restoran olan otel.", location: "Şükrü Paşa Mah. Kıyık Cad. No.: 254, Edirne,", category: AccommodationCategory.hotel),
    Accommodation(title: "ND Suite Otel", image: "images/ND-Suit-Hotel.jpg", info: "Edirne bölgesinde restoran olan otel", location: "Sanayi Sitesi, 29. Sokak, Edirne, Edirne, 22100", category: AccommodationCategory.hotel),
  ];

  List<Favorite> favorites = [
    Favorite(favoritePlace: Accommodation(title: "Hilly Otel", image: "images/hilly-hotel.jpg", info: "Edirne bölgesinde, üst kalite, spa, restoran olan otel.", location: "Şükrü Paşa Mah. Kıyık Cad. No.: 254, Edirne,", category: AccommodationCategory.hotel), category: BasePlaceCategory.accommodation),
    Favorite(favoritePlace: Accommodation(title: "ND Suite Otel", image: "images/ND-Suit-Hotel.jpg", info: "Edirne bölgesinde restoran olan otel", location: "Sanayi Sitesi, 29. Sokak, Edirne, Edirne, 22100", category: AccommodationCategory.hotel), category: BasePlaceCategory.accommodation),
    Favorite(favoritePlace: Place(title: "Balkan Savaşları Müzesi", image: "images/balkansavaşları.jpg", category: PlaceCategory.museum), category: BasePlaceCategory.place),
    Favorite(favoritePlace: Place(title: "Meriç Köprüsü", image: "images/meric.jpg", category: PlaceCategory.historical), category: BasePlaceCategory.place)
  ];
}