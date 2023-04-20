import 'package:flutter/material.dart';
import 'bottom_navbar.dart';
import 'nav_hamburger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Van Alkmaar de Victorie',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightBlue,
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Colors.yellow),
          displayMedium: TextStyle(color: Colors.blue),
          displaySmall: TextStyle(color: Colors.red),
          labelSmall: TextStyle(color: Colors.pink),
          labelMedium: TextStyle(color: Colors.pink),
          labelLarge: TextStyle(color: Colors.pink),
          titleSmall: TextStyle(color: Colors.purple),
          titleMedium: TextStyle(color: Colors.purple),
          titleLarge: TextStyle(color: Colors.purple),
        ),
      ),
      home: const MyHomePage(title: 'Van Alkmaar de Victorie'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Van Alkmaar de Victorie'),
            Image.asset(
              'assets/images/alkmaar_vlag.jpg',
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
