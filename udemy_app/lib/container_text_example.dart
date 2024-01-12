import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ContainerTextExample extends StatelessWidget {
  const ContainerTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(137, 221, 225, 0.872),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 150,
          //width: 300,
          child: const Center(
            child: AutoSizeText(
              "1",
              minFontSize: 15.0,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
