import 'package:flutter/material.dart';
import 'package:hamburger_menu2/bottom_navbar.dart';
import '../nav_hamburger.dart';

class SeasonsPage extends StatelessWidget {
  const SeasonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Seasons Alkmaar' '''54/AZ''' '67/AZ'),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              'Show seasons',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}