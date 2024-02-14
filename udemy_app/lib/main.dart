import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_app/application/theme_service.dart';
//import 'package:udemy_app/counter_site/counter_app_page.dart';
import 'package:udemy_app/nav_root.dart';
import 'package:udemy_app/theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //! Consumer Widget to call service
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeService.isDarkModeOn
            ? ThemeMode.dark
            : ThemeMode.light, //! When darkmode = darkmode if not lightmode
        debugShowCheckedModeBanner: false,
        home: const NavbarWidget(),
      );
    });
  }
}
