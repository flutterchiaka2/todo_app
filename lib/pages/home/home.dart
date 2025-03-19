import 'package:flutter/material.dart';
import 'package:todo_app/pages/main_screen/main_screen.dart';

import '../../utils/constantas/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Scaffold(
      body: Center(
        child: Text("Home", style: TextStyle(color: Colors.white)),
      ),
    ), //0
    Scaffold(
      body: Center(
        child: Text("Calendar", style: TextStyle(color: Colors.white)),
      ),
    ), //1
    Scaffold(
      body: Center(child: Text("Focus", style: TextStyle(color: Colors.white))),
    ), //2
    Scaffold(
      body: Center(
        child: Text("Profil", style: TextStyle(color: Colors.white)),
      ),
    ), //3
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text("Index"),
        centerTitle: true,

        leading: Icon(Icons.sort, color: Colors.white),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: AppColors.grayColor),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;

              print(_currentIndex);
            });
          },
          backgroundColor: AppColors.grayColor,
          selectedIconTheme: IconThemeData(
            color: AppColors.selectableGrayColor,
          ),

          unselectedIconTheme: IconThemeData(color: Colors.white),
          unselectedLabelStyle: TextStyle(color: AppColors.whiteColor),
          selectedItemColor: AppColors.selectableGrayColor,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Calendar"),
            BottomNavigationBarItem(icon: Icon(Icons.watch_later), label: "Focus"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
      body: _pages[_currentIndex], //_Pages[0] _pages[1]
    );
  }
}
