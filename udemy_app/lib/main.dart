import 'package:flutter/material.dart';
//import 'package:udemy_app/counter_site/counter_app_page.dart';
import 'package:udemy_app/nav_root.dart';
import 'package:udemy_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: const NavbarWidget());
  }
}
