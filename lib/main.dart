import 'package:flutter/material.dart';

import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color.fromARGB(255, 10, 13, 34),
        scaffoldBackgroundColor: const Color.fromARGB(255, 10, 13, 34),
      ),
      initialRoute: '/',
      routes: {
        InputPage.routeName: (context) => InputPage(),
        ResultsPage.routeName: (context) => ResultsPage()
      },
    );
  }
}
