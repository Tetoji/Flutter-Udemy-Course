import 'package:flutter/material.dart';
import 'package:udemy_app/counter_site/counter_app_page.dart';
//import 'widgets_examples/widgets_examples_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      //home: const WidgetsExamplesPage(),
      home: const CounterAppPage(),
    );
  }
}
