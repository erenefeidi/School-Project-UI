import 'package:edirne_gezgini_ui/view/favorites_page.dart';
import 'package:edirne_gezgini_ui/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:edirne_gezgini_ui/constants.dart' as constants;


class BottomNavBar extends StatelessWidget{
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: IndexedStack(
            index: currentIndex,
            children:  const [
              HomePage(),
              FavoritePage()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: GoogleFonts.gentiumBookPlus(),
            unselectedLabelStyle: GoogleFonts.gentiumBookPlus(),
            selectedItemColor: constants.bottomNavBarColor,
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            onTap: (index){
              currentIndex = index;
            },
            items: [
              home(),
              favorites()
            ],
          )),
    );
  }

  BottomNavigationBarItem home(){
    return const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Ana Sayfa"
    );
  }

  BottomNavigationBarItem favorites(){
    return const BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: "Favorilerim"
    );
  }
}