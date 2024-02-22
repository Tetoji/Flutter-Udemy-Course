import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_app/application/theme_service.dart';

class Stars extends StatelessWidget {
  const Stars({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        height: 2,
        width: 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 111, 192, 219).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 0),
            )
          ],
        ),
      ),
    );
  }
}

class StarsBig extends StatelessWidget {
  const StarsBig({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        height: 4,
        width: 4,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 111, 192, 219).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 0),
            )
          ],
        ),
      ),
    );
  }
}

class StarPicture extends StatelessWidget {
  const StarPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return Stack(
          children: [
            Positioned(
              right: 60,
              child: AnimatedOpacity(
                  opacity: themeService.isDarkModeOn ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const StarsBig()),
            ),
            Positioned(
              top: 15,
              right: 67,
              child: AnimatedOpacity(
                  opacity: themeService.isDarkModeOn ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const StarsBig()),
            ),
            Positioned(
              top: 30,
              right: 200,
              child: AnimatedOpacity(
                  opacity: themeService.isDarkModeOn ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const StarsBig()),
            ),
            Positioned(
              top: 28,
              right: 240,
              child: AnimatedOpacity(
                  opacity: themeService.isDarkModeOn ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const Stars()),
            ),
            Positioned(
              top: 29,
              right: 280,
              child: AnimatedOpacity(
                  opacity: themeService.isDarkModeOn ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const StarsBig()),
            ),
            Positioned(
              top: 25,
              right: 300,
              child: AnimatedOpacity(
                  opacity: themeService.isDarkModeOn ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const StarsBig()),
            ),
            Positioned(
              top: 150,
              right: 150,
              child: AnimatedOpacity(
                  opacity: themeService.isDarkModeOn ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const Stars()),
            ),
            Positioned(
              top: 130,
              right: 140,
              child: AnimatedOpacity(
                  opacity: themeService.isDarkModeOn ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const Stars()),
            ),
            Positioned(
              top: 130,
              right: 190,
              child: AnimatedOpacity(
                  opacity: themeService.isDarkModeOn ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const Stars()),
            ),
            Positioned(
              top: 100,
              right: 260,
              child: AnimatedOpacity(
                  opacity: themeService.isDarkModeOn ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const StarsBig()),
            ),
            Positioned(
              top: 80,
              right: 190,
              child: AnimatedOpacity(
                  opacity: themeService.isDarkModeOn ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const Stars()),
            ),
            Positioned(
              top: 100,
              right: 50,
              child: AnimatedOpacity(
                  opacity: themeService.isDarkModeOn ? 1 : 0,
                  duration: const Duration(microseconds: 300),
                  child: const StarsBig()),
            ),
          ],
        );
      },
    );
  }
}
