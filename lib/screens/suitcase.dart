import 'package:flutter/material.dart';

class SuitCase extends StatefulWidget {
  const SuitCase({Key? key}) : super(key: key);

  @override
  State<SuitCase> createState() => _SuitCaseState();
}

class _SuitCaseState extends State<SuitCase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text('SuitCase Page',style: TextStyle(fontSize: 20),)),
        ],
      ),
    );
  }
}
