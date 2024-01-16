import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:udemy_app/app_picture.dart';
import 'package:udemy_app/row_expanded_example.dart';
import 'package:udemy_app/container_text_example.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(246, 116, 189, 202),
        leading: const Icon(
          Icons.home,
          size: 25.0,
        ),
        centerTitle: true,
        title: const AutoSizeText(
          "Beschuss Tracking",
          style: TextStyle(
            fontFamily: 'BarlowCondensed',
            fontWeight: FontWeight.w700,
          ),
          minFontSize: 30.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 20), //! For every Widget in Body
          child: Column(
            children: [
              //* First Widget
              const AppPicture(),

              //* Second(1) Widget
              const ContainerTextExample(),

              //* Third(2) Widget
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(239, 174, 63, 0.817),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 100,
                    child: const Center(
                      child: AutoSizeText(
                        "2",
                        minFontSize: 15.0,
                        style: TextStyle(
                          fontFamily: 'BarlowCondensed',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //* Fourth(3) and Fifth(4) Widget
              const RowExpandedExample(),

              const ContainerTextExample(),
            ],
          ),
        ),
      ),
    );
  }
}
