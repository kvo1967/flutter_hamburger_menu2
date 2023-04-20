import 'package:flutter/material.dart';
import '../bottom_navbar.dart';
import '../nav_hamburger.dart';

class SilverwarePage extends StatelessWidget {
  const SilverwarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Silverware Alkmaar' '''54/AZ''' '67/AZ'),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              'Show silverware',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}