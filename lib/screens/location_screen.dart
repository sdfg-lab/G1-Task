import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:
        [
          const SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:
              [
                Image.asset(
                  'assets/images/Menu.png',
                ),
                const SizedBox(width: 80),
                Text(
                  'LOCATION',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Image.asset(
            'assets/images/USA.png',
            width: 300,
          ),
          const SizedBox(height: 5),
          Image.asset(
            'assets/images/France.png',
            width: 300,
          ),
          const SizedBox(height: 5),
          Image.asset(
            'assets/images/India.png',
            width: 300,
          ),
          const SizedBox(height: 5),
          Image.asset(
            'assets/images/England.png',
            width: 300,
          ),
          const SizedBox(height: 5),
          Image.asset(
            'assets/images/Australia.png',
            width: 300,
          ),
        ],
      ),
    );
  }
}
