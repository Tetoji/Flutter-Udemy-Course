import 'package:flutter/material.dart';

class Moon extends StatelessWidget {
  const Moon({super.key});

  @override
  Widget build(BuildContext context) {
    return MoonShine(
        radius: 70,
        child: MoonShine(
            radius: 50,
            child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 178, 182, 197),
                      Color.fromARGB(255, 83, 117, 181),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
                child: Stack(children: [
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(83, 109, 107, 114),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(64, 109, 107, 114),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 4,
                    right: 20,
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(64, 93, 84, 116),
                      ),
                    ),
                  ),
                ]))));
  }
}

class MoonShine extends StatelessWidget {
  final double radius;
  final Widget child;
  const MoonShine({super.key, required this.radius, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 202, 246, 252).withOpacity(0.1),
      ),
      child: Center(child: child),
    );
  }
}
