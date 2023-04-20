import 'package:flutter/material.dart';
import 'package:hamburger_menu2/entities/manager_entity.dart';
import 'package:hamburger_menu2/pages/managers/manager_detail.dart';
import '../bottom_navbar.dart';
import '../nav_hamburger.dart';

class ManagersPage extends StatelessWidget {
  const ManagersPage(Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var managerDetail = ManagerDetail(
        super.key,
        const ManagerEntity(
            'assets/images/managers/GeorgKessler.jpg',
            'Georg',
            'Kessler',
            'Seizoen 78-79, 79-80, 80-81, 81-82',
            'Landskampioen 1981',
            'KNVB Beker 1981, 1982',
            'Oud bondscaoch Georg Keßler werd in de zomer van 1978 trainer van het AZ'
                '67. Vertrok in 1982 naar Club Brugge'),
        false);
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Managers Alkmaar' '''54/AZ''' '67/AZ',
            style: TextStyle(color: Colors.white)),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ManagerDetail(
                super.key,
                const ManagerEntity(
                    'assets/images/managers/PascalJansen.jpg',
                    'Pascal',
                    'Jansen (27-01-1973)',
                    'Seizoen 20-21, 21-22, 22-23',
                    '',
                    '',
                    'Pascal Jansen contract verlengt'),
                true),
            const Divider(),
            ManagerDetail(
              super.key,
              const ManagerEntity('assets/images/managers/ArneSlot.jpg', 'Arne',
                  'Slot (17-09-1978)', 'Seizoen 19-20, 20-21', '', '', ''),
              false,
            ),
            const Divider(),
            ManagerDetail(
              super.key,
              const ManagerEntity(
                  'assets/images/managers/JohnVanDeBrom.jpg',
                  'John',
                  'van den Brom (04-10-1966)',
                  'Seizoen 14-15, 15-16, 16-17, 17-18, 18-19',
                  'KNVB Bekerfinale 2017, 2018',
                  '',
                  ''),
              false,
            ),
            const Divider(),
            ManagerDetail(
              super.key,
              const ManagerEntity(
                  'assets/images/managers/CoAdriaanse.jpg',
                  'Co',
                  'Adriaanse (21-07-1947)',
                  'Seizoen 02-03, 03-04, 04-05',
                  'Halve finale UEFA Cup 2005',
                  '',
                  ''),
              false,
            ),
            const Divider(),
            ManagerDetail(
              super.key,
              const ManagerEntity(
                  'assets/images/managers/WillemVanHanegem.jpg',
                  'Willem',
                  'van Hanegem (20-02-1944)',
                  'Seizoen 97-98, 98-99',
                  'Kampioen 1e divisie 1998',
                  '',
                  ''),
              false,
            ),
            const Divider(),
            ManagerDetail(
              super.key,
              const ManagerEntity(
                  'assets/images/managers/HansEijkenbroek.jpg',
                  'Hans',
                  'Eijkenbroek',
                  'Seizoen 82-83, 86-87, 87-88, 88-89',
                  'Degradatie Eredivisie 1988',
                  '',
                  ''),
              false,
            ),
            const Divider(),
            managerDetail,
            const Divider(),
            ManagerDetail(
              super.key,
              const ManagerEntity(
                  'assets/images/managers/CorVanDerHart.jpg',
                  'Cor',
                  'van der Hart (25-01-1988)',
                  'Seizoen 71-72, 72-73, 77-78',
                  'Promotie Eredivisie 1972',
                  'KNVB Beker 1978',
                  ''),
              false,
            ),
          ],
        ),
      ),
    );
  }
}
