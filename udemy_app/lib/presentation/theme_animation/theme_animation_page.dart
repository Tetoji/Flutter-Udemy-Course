import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_app/application/theme_service.dart';

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
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                child: SizedBox(
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
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
