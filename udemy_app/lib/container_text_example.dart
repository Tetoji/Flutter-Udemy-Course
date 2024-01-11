import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ContainerTextExample extends StatelessWidget {
  const ContainerTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 150,
        //width: 300,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(170, 215, 217, 10),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: AutoSizeText(
            "Beschuss 🍛",
            minFontSize: 15.0,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
