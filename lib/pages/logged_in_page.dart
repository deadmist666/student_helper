import 'package:figma_design/pages/account_page.dart';
import 'package:figma_design/pages/location_page.dart';
import 'package:figma_design/pages/schedule_page.dart';
import 'package:figma_design/pages/task_page.dart';
import 'package:figma_design/pages/news_page.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {


  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  int selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 21,
        selectedFontSize: 10,
        onTap: navigateBottomBar,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.newspaper_outlined), label: 'Новини', ),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_outlined), label: 'Завдання', ),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: 'Розклад'),
          BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: 'Мапа'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Користувач'),
        ],
      ),
    );
  }
}

List<Widget> pages = [
  NewsPage(),
  TaskPage(),
  SchedulePage(),
  LocationPage(),
  AccountPage()
];


