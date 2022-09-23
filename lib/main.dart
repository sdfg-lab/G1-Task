import 'package:flutter/material.dart';
import 'package:trip_it_task/screens/calendar.dart';
import 'package:trip_it_task/screens/fav.dart';
import 'package:trip_it_task/screens/splash_screen.dart';
import 'package:trip_it_task/screens/suitcase.dart';
import 'package:trip_it_task/screens/location_screen.dart';
import 'package:trip_it_task/screens/menu_bar_screen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPage = 0;
  final _pageOption = [Location(),Fav(),SuitCase(),Calendar(),MenuBar()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOption[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        items:
        [
          TabItem(icon: Image.asset('assets/images/home.png')),
          TabItem(icon: Image.asset('assets/images/heart.png')),
          TabItem(icon: Image.asset('assets/images/Suitcase.png')),
          TabItem(icon: Image.asset('assets/images/Calendar.png')),
          TabItem(icon: Image.asset('assets/images/avatar1.png')),
        ],
        initialActiveIndex: 0,
        onTap: (int index){
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}

