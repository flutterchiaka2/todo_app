import 'package:flutter/material.dart';
import 'package:todo_app/utils/constantas/app_color.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 76,
              height: 31,
              decoration: BoxDecoration(
                color: AppColors.grayColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Today", style: TextStyle(color: Colors.white)),
                    Icon(Icons.keyboard_arrow_down, color: Colors.white),
                  ],
                ),
              ),
            ),

            Card(
              color: AppColors.grayColor,
              child: ListTile(
                title: Text("Do Math Homework"),
                subtitle: Row(
                  children: [
                    Text(
                      "Today At 16:45",
                      style: TextStyle(color: AppColors.grayColor100),
                    ),

                    Container(
                      height: 31,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(4),
                      child: Row(
                        spacing: 8,
                        children: [
                          Icon(Icons.school, color: Colors.white),
                          Text("University"),
                        ],
                      ),
                    ),
                  ],
                ),
                textColor: AppColors.whiteColor,
              ),
            ),

            // Container(
            //   width: 327,
            //   height: 72,
            //   decoration: BoxDecoration(
            //     color: AppColors.grayColor,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Row(children: [
            //
            //
            //     //Radio btn
            //
            //     //Column: title subtitle
            //
            //
            //   ],),
            // )
          ],
        ),
      ),
    );
  }
}
