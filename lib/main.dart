//import 'package:durg_rohak1/home.dart';
import 'package:flutter/material.dart';
import 'fortInfo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue,
      ),
      home:const  FortScreen(),
    );
  }
}
