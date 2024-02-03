import 'package:flutter/material.dart';

class AppPicture extends StatelessWidget {
  const AppPicture({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),

      //* Picture Container
      child: SizedBox(
        height: size.height * .34, //! Hight overall (270)
        width: size.width *
            .6, //! Width overall (in this case even to zoom in picture)
        child: Stack(
          children: [
            const SizedBox(
              height:
                  240, //! For circular picture height = width of Container(overall)
              child: CircleAvatar(
                radius: 240,
                backgroundImage: AssetImage(
                    "assets/images/reis-mit-bohnen-einfache-reispfanne.jpg"),
              ),
            ),

            //* Text Container
            Align(
              alignment: Alignment.bottomCenter, //! To alignt text box
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(246, 240, 181, 5),
                ),
                alignment: Alignment.center,
                height: size.height * .09,
                width: 240,
                child: const Column(
                  children: [
                    Text(
                      "Beschuss",
                      style: TextStyle(
                        fontFamily: 'BarlowCondensed',
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Deine Tracking-App",
                      style: TextStyle(
                        fontFamily: 'BarlowCondensed',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
