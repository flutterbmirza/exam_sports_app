import 'package:flutter/material.dart';

import 'screens/home_page.dart';
import 'screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPAge(),
      theme: ThemeData(brightness: Brightness.dark,
        primarySwatch: Colors.lightBlue
      ),
    );
  }
}
