import 'package:figma_design/pages/account_page.dart';
import 'package:figma_design/pages/location_page.dart';
import 'package:figma_design/pages/schedule_page.dart';
import 'package:figma_design/pages/tasks_page.dart';
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

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
            children: [
              Container(
                height: 30,
                width: 327,
                child: Text('Новини', style: TextStyle( fontSize: 20, fontWeight: FontWeight.w700,),),
              ),
              SizedBox(height: 16),
              Container(
                  height: 35,
                  width: 327,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'Пошук',
                      prefixIcon: Icon(Icons.search_outlined),
                    ),
                  )
              ),
              SizedBox(height: 24),
              Flexible(
                child: Container(
                  height: 327,
                  width: 327,
                  margin: EdgeInsets.only(left: 48, right: 48),
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  height: 163.5,
                  width: 327,
                  margin: EdgeInsets.only(left: 48, right: 48),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
