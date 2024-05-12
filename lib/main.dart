import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
    Tab5Screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Instagram"),
          actions: [
            IconButton(
              icon: Icon(Icons.add_box),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
          child: _screens[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: ' '),
            BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black), label: ' '),
            BottomNavigationBarItem(icon: Icon(Icons.subscriptions, color: Colors.black), label: ' '),
            BottomNavigationBarItem(icon: Icon(Icons.mail_outline, color: Colors.black), label: ' '),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle, color: Colors.black), label: ' '),
          ],
        ),
      ),
    );
  }
}

class Tab1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/taeyang.png'
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tab2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "tab2", style: TextStyle(
        color: Colors.black
      ),
      ),
    );
  }
}

class Tab3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("tab3"),
    );
  }
}

class Tab4Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("tab4"),
    );
  }
}

class Tab5Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("tab5"),
    );
  }
}
