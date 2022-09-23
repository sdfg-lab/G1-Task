import 'package:flutter/material.dart';
import 'package:trip_it_task/account/sign_in.dart';

class ThirdStartScreen extends StatefulWidget {
  const ThirdStartScreen({Key? key}) : super(key: key);

  @override
  State<ThirdStartScreen> createState() => _ThirdStartScreenState();
}

class _ThirdStartScreenState extends State<ThirdStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 70),
          Center(
            child: Image.asset(
              'assets/images/Logo Color.png',
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Image.asset(
              'assets/images/Vector Image3.png',
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              'Enjoy Your Trip',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Image.asset(
              'assets/images/text2.png',
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
            },
            child: Text(
              'LET’S GO!',
              style: TextStyle(
                  color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
