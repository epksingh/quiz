import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  const GradientContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Color.fromARGB(255, 27, 17, 17),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}
