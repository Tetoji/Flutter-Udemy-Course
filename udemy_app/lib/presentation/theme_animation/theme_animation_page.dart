import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ThemaAnimationPage extends StatelessWidget {
  const ThemaAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0, //! AppBar doesnt change color after scroll
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: const AutoSizeText(
          "Theme Page",
          style: TextStyle(
            fontFamily: 'BarlowCondensed',
            fontWeight: FontWeight.w700,
          ),
          minFontSize: 30.0,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Material(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            elevation: 8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
