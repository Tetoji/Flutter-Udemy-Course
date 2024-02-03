import 'package:flutter/material.dart';
import 'package:udemy_app/presentation/counter_site/counter_app_page.dart';
import 'package:udemy_app/presentation/theme_animation/theme_animation_page.dart';
import 'package:udemy_app/presentation/widgets_examples/widgets_examples_page.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<NavbarWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        //! Hold the state of every widget (counter dont reset on side change)
        index: _currentIndex,
        children: const [
          WidgetsExamplesPage(),
          CounterAppPage(),
          ThemaAnimationPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.countertops_sharp), label: "Counter"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dark_mode), label: "Theme Page")
        ],
      ),
    );
  }
}
