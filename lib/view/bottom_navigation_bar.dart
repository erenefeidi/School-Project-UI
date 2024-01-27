import 'package:edirne_gezgini_ui/view/favorites_page.dart';
import 'package:edirne_gezgini_ui/view/home_page.dart';
import 'package:edirne_gezgini_ui/view/show_route_page.dart';
import 'package:flutter/material.dart';
import 'package:edirne_gezgini_ui/constants.dart' as constants;

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: [
            HomePage(),
            FavoritePage(),
            ShowRoutePage(),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [home(), favorites(), show_route()],
          indicatorColor: constants.bottomNavBarColor.withOpacity(0.9),
          selectedIndex: currentIndex,
          elevation: 0,
          onDestinationSelected: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

NavigationDestination home() {
  return const NavigationDestination(
    selectedIcon: Icon(Icons.home),
    icon: Icon(Icons.home_outlined),
    label: "Ana Sayfa",
  );
}

NavigationDestination favorites() {
  return const NavigationDestination(
    selectedIcon: Icon(Icons.favorite),
    icon: Icon(Icons.favorite_border),
    label: "Favorilerim",
  );
}

NavigationDestination show_route() {
  return const NavigationDestination(
    selectedIcon: Icon(Icons.map),
    icon: Icon(Icons.map_outlined),
    label: "Rota Göster",
  );
}
