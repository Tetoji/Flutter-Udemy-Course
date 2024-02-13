import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RowExpandedExample extends StatelessWidget {
  const RowExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          //* First Widget
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 162, 154, 154),
              ),
              height: 100,
              width: 50,
              child: const Center(
                child: AutoSizeText(
                  "3",
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

          //* Second Widget
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xD7D05757),
                  ),
                  height: 100,
                  width: 50,
                  child: const Center(
                    child: AutoSizeText(
                      "4",
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
          ),
        ],
      ),
    );
  }
}
