import 'package:flutter/material.dart';

import '../../utils/constantas/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToDo APP")),

      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: AppColors.grayColor),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          ],
        ),
      ),
    );
  }
}
