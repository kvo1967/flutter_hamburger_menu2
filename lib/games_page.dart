import 'package:flutter/material.dart';
import 'package:hamburger_menu2/settings_page.dart';
import 'bottom_navbar.dart';
import 'nav_hamburger.dart';
import 'entities/games_list_element.dart';
import 'package:intl/intl.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({super.key});

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  int currentPage = 0;
  List<Widget> pages = const [SettingsPage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text("Games Alkmaar'54/AZ'67/AZ"),
      ),      
      bottomNavigationBar: const BottomNavBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            //controller: controller,
            child: DataTable(
                columnSpacing: 20.0,
                columns: const [
                  DataColumn(label: Text('Season')),
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Game')),
                  DataColumn(label: Text('Result')),
                ],
                rows: gamesMock
                    .map((game) => DataRow(cells: [
                          DataCell(Text(game.season)),
                          DataCell(Text(
                              DateFormat('dd-MM-yy').format(game.datePlayed))),
                          DataCell(Text(game.description)),
                          DataCell(Text(game.result)),
                        ]))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
