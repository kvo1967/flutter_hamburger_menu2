import 'package:flutter/material.dart';
import 'package:hamburger_menu2/games_page.dart';
import 'package:hamburger_menu2/main.dart';
import 'package:hamburger_menu2/pages/managers_page.dart';
import 'package:hamburger_menu2/pages/players_page.dart';
import 'package:hamburger_menu2/pages/seasons_page.dart';
import 'package:hamburger_menu2/pages/silverware_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(
            icon: Icon(Icons.sports_soccer_outlined), label: 'Games'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Players'),
        NavigationDestination(
            icon: Icon(Icons.checklist_outlined), label: 'Seasons'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Managers'),
        NavigationDestination(
            icon: Icon(Icons.blender_outlined), label: 'Honours'),
        NavigationDestination(
            icon: Icon(Icons.stacked_bar_chart_outlined), label: 'Stats'),
      ],
      onDestinationSelected: (int index) {
        setState(() {
          currentPage = index;
          switch (currentPage) {
            case 0:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MyHomePage(title: "Van Alkmaar de Victorie")));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GamesPage()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PlayersPage()));
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SeasonsPage()));
              break;
            case 5:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SilverwarePage()));
              break;
            case 4:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ManagersPage(widget.key)));
              break;
          }
        });
      },
      selectedIndex: currentPage,
      // body: <Widget>[
      //   const MyHomePage(title: 'Van Alkmaar de Victorie'),
      //   const GamesPage(),
      //   const PlayersPage(),
      //   const SeasonsPage(),
      //   const SilverwarePage(),
      // ][currentPage]
    );
  }
}
