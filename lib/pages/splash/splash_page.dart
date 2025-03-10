import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/pages/home/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() {
    Timer(Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomePage()),
      );
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("Start");

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assets/icon/icon.png")],
        ),
      ),
    );
  }
}
