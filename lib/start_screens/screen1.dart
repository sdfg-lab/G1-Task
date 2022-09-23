import 'package:flutter/material.dart';

class FirstStartScreen extends StatefulWidget {
  const FirstStartScreen({Key? key}) : super(key: key);

  @override
  State<FirstStartScreen> createState() => _FirstStartScreenState();
}

class _FirstStartScreenState extends State<FirstStartScreen> {
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
              'assets/images/Vector Image1.png',
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              'Plan Your Trip',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              'Plan your trip, choose your destination.',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          const SizedBox(height: 5),
          Center(
            child: Text(
              'Pick the best place for your holiday.',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Image.asset(
              'assets/images/Dot1.png',
            ),
          ),
        ],
      ),
    );
  }
}
