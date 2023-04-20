import 'package:flutter/material.dart';
import '../bottom_navbar.dart';
import '../nav_hamburger.dart';

class PlayersPage extends StatelessWidget {
  const PlayersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Players Alkmaar' '''54/AZ''' '67/AZ'),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              'Search Players',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
