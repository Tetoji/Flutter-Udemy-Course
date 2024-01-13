import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AppPicture extends StatelessWidget {
  const AppPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Center(
        child: Expanded(
          //* Picture Container
          child: SizedBox(
            height: 270, //! Hight overall
            width: 270, //! Width overall (in this case even to zoom in picture)
            child: Stack(
              children: [
                const SizedBox(
                  height:
                      240, //! For circular picture height = width of Container(overall)
                  child: CircleAvatar(
                    radius: 240,
                    backgroundImage: AssetImage(
                        "assets/reis-mit-bohnen-einfache-reispfanne.jpg"),
                  ),
                ),

                //* Text Container
                Align(
                  alignment: Alignment.bottomCenter, //! To alignt text box
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(239, 255, 193, 7),
                    ),
                    alignment: Alignment.center,
                    height: 60,
                    width: 240,
                    child: const AutoSizeText(
                      "Beschuss",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
