import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CounterAppPage extends StatefulWidget {
  const CounterAppPage({super.key});

  @override
  State<CounterAppPage> createState() => _CounterAppPageState();
}

class _CounterAppPageState extends State<CounterAppPage> {
  int counter = 0;

  void incrementcounter() {
    setState(() {
      counter++;
    });
  }

  void decrementcounter() {
    setState(() {
      if (counter == 0) {
      } else {
        counter--;
      }
    });
  }

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
      body: Center(
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: counter < 20
                  ? Colors.amber
                  : Colors.amberAccent, //! Wenn-Bedingung
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    "Counter:",
                    style: TextStyle(
                        fontFamily: 'BarlowCondensed',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    counter.toString(),
                    style: const TextStyle(
                        fontFamily: 'BarlowCondensed',
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: "incrementBtn",
              backgroundColor: Colors.blue,
              onPressed: () => incrementcounter(),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            FloatingActionButton(
              heroTag: "decrementBtn",
              backgroundColor: Colors.red,
              onPressed: () => decrementcounter(),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
