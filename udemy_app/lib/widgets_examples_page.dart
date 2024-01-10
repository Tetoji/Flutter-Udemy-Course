import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.home,
          size: 25.0,
        ),
        centerTitle: true,
        title: const AutoSizeText(
          "Titel",
          style: TextStyle(fontWeight: FontWeight.w700),
          minFontSize: 25.0,
        ),
        backgroundColor: const Color.fromRGBO(171, 226, 255, 60),
      ),
      body: const Center(
        child: AutoSizeText(
          "Hello World",
          minFontSize: 20.0,
        ),
      ),
    );
  }
}
