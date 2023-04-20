import 'package:flutter/material.dart';
import 'package:hamburger_menu2/games_page.dart';
import 'package:hamburger_menu2/main.dart';
import 'package:hamburger_menu2/pages/seasons_page.dart';
import 'package:hamburger_menu2/pages/silverware_page.dart';
import 'package:hamburger_menu2/settings_page.dart';
import 'package:hamburger_menu2/pages/players_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'by kvo',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: const Text('info@vanalkmaardevictorie.nl'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/az-transparant.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://www.azfanpage.nl/wp-content/uploads/2012/10/Alkmaarderhout1.jpg')),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MyHomePage(title: 'Van Alkmaar de Victorie')));
            },
          ),
          ListTile(
            leading: const Icon(Icons.sports_soccer_outlined),
            title: const Text('Games'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GamesPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Players'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PlayersPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.checklist_outlined),
            title: const Text('Seasons'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SeasonsPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.blender_outlined),
            title: const Text('Silverware'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => const SilverwarePage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.stacked_bar_chart_outlined),
            title: const Text('Stats'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsPage()));
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.popUntil(context, (route) => true);
            },
          ),
        ],
      ),
    );
  }
}

        // MyMenuItem(widget.key,  1, 'Dashboard', Icons.dashboard_outlined, widget.currentPage == DrawerSections.dashboard ? true : false),
        // //menuItem(1, 'Games', Icons.border_horizontal_outlined, currentPage == DrawerSections.dashboard ? true : false),
        // MyMenuItem(widget.key,  2, 'Games', Icons.sports_soccer_outlined, widget.currentPage == DrawerSections.games ? true : false),
        // MyMenuItem(widget.key,  3, 'Players', Icons.person_outlined, widget.currentPage == DrawerSections.players ? true : false),
        // const Divider(),
        // MyMenuItem(widget.key,  4, 'Seasons', Icons.checklist_outlined, widget.currentPage == DrawerSections.seasons ? true : false),
        // MyMenuItem(widget.key,  5, 'Silverware', Icons.blender_outlined, widget.currentPage == DrawerSections.silverware ? true : false),
        // MyMenuItem(widget.key,  6, 'Stats', Icons.checklist_outlined, widget.currentPage == DrawerSections.stats ? true : false),
