import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:udemy_app/container_text_example.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(146, 199, 207, 10),
        leading: const Icon(
          Icons.home,
          size: 25.0,
        ),
        centerTitle: true,
        title: const AutoSizeText(
          "Beschuss Tracking",
          style: TextStyle(fontWeight: FontWeight.w700),
          minFontSize: 25.0,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center, //puts all children in the middle of the screen
            children: [
              const ContainerTextExample(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: const Color.fromRGBO(251, 249, 241, 10),
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: const Color.fromRGBO(229, 225, 218, 10),
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
