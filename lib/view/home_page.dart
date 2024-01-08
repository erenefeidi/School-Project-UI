import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../database/temporary_database.dart';
import '../model/enum/place_category.dart';
import '../model/place.dart';
import '../widget/hero_area.dart';
import '../widget/place_card.dart';
import 'hotels_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Place> historicalPlaces = TemporaryDatabase()
        .places
        .where((place) => place.category == PlaceCategory.historical)
        .toList();
    List<Place> museums = TemporaryDatabase()
        .places
        .where((place) => place.category == PlaceCategory.museum)
        .toList();

    double width = MediaQuery.of(context).size.width/100;
    double height = MediaQuery.of(context).size.height/100;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: ThemeData.dark().textTheme.copyWith(),
        fontFamily: "Inter",
        useMaterial3: true,
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: PopupMenuButton<String>(
            onSelected: (String result) {},
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Müzeler',
                child: Text('Müzeler', style: TextStyle(fontSize: 20)),
              ),
              PopupMenuItem<String>(
                value: 'Oteller',
                child: const Text('Oteller', style: TextStyle(fontSize: 20),),
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const HotelsPage())),
              ),
            ],
            icon: const Icon(Icons.menu),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 2),
                  image: const DecorationImage(
                    image: AssetImage("images/profil.jpg"),
                  ),
                ),
              ),
            )
          ],
          title: const Center(
              child: AutoSizeText(
            "EDİRNE GEZGİNİ",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          const HeroArea(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: AutoSizeText(
                "Tarihi Mekanlar",
                textAlign: TextAlign.left,
                minFontSize: 15,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
          ),
          const SizedBox(height: 16),
          
          //list historical places
          SizedBox(
            width: width*50,
            height: height*65,
            child: historicalPlacesListView(historicalPlaces),
          ),
          
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: AutoSizeText(
                "Müzeler",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
          ),
          const SizedBox(height: 16),
          
          //list museums
          SizedBox(
              width: width*100,
              height: height*65,
              child: museumsListView(museums)),
        ]),
      ),
    );
  }

  Widget historicalPlacesListView(List<Place> historicalPlaces) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      scrollDirection: Axis.horizontal,
      itemCount: historicalPlaces.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: PlaceCard(
            title: historicalPlaces[index].title,
            image: historicalPlaces[index].image,
          ),
        );
      },
    );
  }

  Widget museumsListView(List<Place> museums) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      scrollDirection: Axis.horizontal,
      itemCount: museums.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: PlaceCard(
            title: museums[index].title,
            image: museums[index].image,
          ),
        );
      },
    );
  }
}
