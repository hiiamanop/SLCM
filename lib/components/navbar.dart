import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:super_app/pages/bookmark_page.dart';
import 'package:super_app/pages/calendar_page.dart';
import 'package:super_app/pages/home_page.dart';
import 'package:super_app/pages/note_page.dart';
import 'package:super_app/pages/profile_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 2;
  List<Widget> widgetList = const [
    ClassPage(),
    NotePage(),
    HomePage(),
    CalendarPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey[200] ??
            Colors
                .white, // Provide a default color if Colors.grey[100] is nullable
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          Icon(Icons.bookmark, color: Colors.indigo),
          Icon(Icons.edit_document, color: Colors.indigo),
          Icon(Icons.home, color: Colors.indigo),
          Icon(Icons.calendar_month, color: Colors.indigo),
          Icon(Icons.person, color: Colors.indigo),
        ],
      ),
      body: Center(
        child: widgetList[_currentIndex],
      ),
    );
  }
}
