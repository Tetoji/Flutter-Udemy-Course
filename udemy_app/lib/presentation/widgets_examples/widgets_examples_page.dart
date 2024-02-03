import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'widgets/app_picture.dart';
import 'widgets/container_text_example.dart';
import 'widgets/row_expanded_example.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0, //! AppBar doesnt change color after scroll
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
            ],
          ),
        ),
      ),

      /* //! Navbar with InkWell but for now not in use 
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        child: Align(
          child: InkWell(
            // ignore: avoid_print,
            onTap: () => print('tap on close'),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      fontFamily: 'BarlowCondensed',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),*/
    );
  }
}
