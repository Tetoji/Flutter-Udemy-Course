import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkModeOn = false;

  void toggleTheme() {
    isDarkModeOn =
        !isDarkModeOn; //! Neglierung => If false then true and otherwise
    notifyListeners();
  }
}
