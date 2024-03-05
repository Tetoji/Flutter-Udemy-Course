import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_app/application/theme_service.dart';
import 'package:udemy_app/presentation/theme_animation/animation_widgets/moon.dart';
import 'package:udemy_app/presentation/theme_animation/animation_widgets/stars.dart';
import 'package:udemy_app/presentation/theme_animation/animation_widgets/sun.dart';

//TODO Shared prefernces
class ThemaAnimationPage extends StatelessWidget {
  const ThemaAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    //! Consumer Widget to call service
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation:
              0.0, //! AppBar doesnt change color after scroll
          backgroundColor: Theme.of(context).colorScheme.primary,
          centerTitle: true,
          title: const AutoSizeText(
            "Theme Page",
            style: TextStyle(
              fontFamily: 'BarlowCondensed',
              fontWeight: FontWeight.w700,
            ),
            minFontSize: 30.0,
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              elevation: 8,
              color: Theme.of(context).colorScheme.onPrimary,
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                //! upper half
                child: Container(
                  height: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: themeService.isDarkModeOn
                          ? const [
                              Color.fromARGB(255, 13, 32, 106),
                              Color.fromARGB(255, 35, 54, 133),
                              Color.fromARGB(255, 170, 183, 242),
                            ]
                          : [
                              const Color.fromARGB(255, 103, 133, 255),
                              const Color.fromARGB(255, 165, 180, 237),
                              const Color.fromARGB(255, 255, 255, 255),
                            ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  //! lower half
                  child: Stack(
                    children: [
                      const Positioned(
                        right: 60,
                        child: StarsBig(),
                      ),
                      const Positioned(
                        top: 15,
                        right: 67,
                        child: StarsBig(),
                      ),
                      const Positioned(
                        top: 30,
                        right: 200,
                        child: StarsBig(),
                      ),
                      const Positioned(
                        top: 28,
                        right: 240,
                        child: Stars(),
                      ),
                      const Positioned(
                        top: 29,
                        right: 280,
                        child: StarsBig(),
                      ),
                      const Positioned(
                        top: 25,
                        right: 300,
                        child: StarsBig(),
                      ),
                      const Positioned(
                        top: 150,
                        right: 150,
                        child: Stars(),
                      ),
                      const Positioned(
                        top: 130,
                        right: 140,
                        child: Stars(),
                      ),
                      const Positioned(
                        top: 130,
                        right: 190,
                        child: Stars(),
                      ),
                      const Positioned(
                        top: 100,
                        right: 260,
                        child: StarsBig(),
                      ),
                      const Positioned(
                        top: 80,
                        right: 190,
                        child: Stars(),
                      ),
                      const Positioned(
                        top: 100,
                        right: 50,
                        child: StarsBig(),
                      ),
                      AnimatedPadding(
                        padding: EdgeInsets.only(
                            top: themeService.isDarkModeOn ? 200 : 150),
                        duration: const Duration(microseconds: 300),
                        child: const Center(child: Sun()),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color:
                                Theme.of(context).appBarTheme.backgroundColor,
                          ),
                          height: 225,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Heading",
                                style: TextStyle(
                                    fontFamily: 'BarlowCondensed',
                                    fontSize: 30),
                              ),
                              const Text("Body",
                                  style: TextStyle(
                                      fontFamily: 'BarlowCondensed',
                                      fontSize: 25)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Darkmode:",
                                    style: TextStyle(
                                        fontFamily: 'BarlowCondensed',
                                        fontSize: 20),
                                  ),
                                  Switch(
                                    value: themeService.isDarkModeOn,
                                    onChanged: (value) {
                                      Provider.of<ThemeService>(
                                        context,
                                        listen: false,
                                      ) //!Provider to invoke function
                                          .toggleTheme();
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
