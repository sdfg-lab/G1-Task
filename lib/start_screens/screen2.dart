import 'package:flutter/material.dart';

class SecondStartScreen extends StatefulWidget {
  const SecondStartScreen({Key? key}) : super(key: key);

  @override
  State<SecondStartScreen> createState() => _SecondStartScreenState();
}

class _SecondStartScreenState extends State<SecondStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          Center(
            child: Image.asset(
              'assets/images/Logo Color.png',
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Image.asset(
              'assets/images/Vector Image2.png',
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              'Select The Date',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Image.asset(
              'assets/images/Text.png',
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Image.asset(
              'assets/images/Dot2.png',
            ),
          ),
        ],
      ),
    );
  }
}
