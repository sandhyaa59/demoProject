// import 'package:demoproject/screens/homepage.dart';
// import 'package:demoproject/screens/homepage.dart';
import 'package:demoproject/screens/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DemoProject());
}

class DemoProject extends StatelessWidget {
  const DemoProject({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Search(),
    );
  }
}