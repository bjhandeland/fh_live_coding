import 'package:flutter/material.dart';

import 'screens/_screens.dart';

/// Just a boilerplate main file with a [BottomNavigationBar].
///
/// Nothing to see here, move along.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futurehome Live Coding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    GamesScreen(),
    DesignerScreen(),
    NumberScreen(),
    ColorScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FH Live Coding'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset),
            label: 'Game',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Designer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Number',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_paint),
            label: 'Color',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey.shade700,
        onTap: _onItemTapped,
      ),
    );
  }
}
