import 'package:flutter/material.dart';

class OptionsButton extends StatelessWidget {
  final String option;
  final VoidCallback onPressed;

  const OptionsButton({
    required this.option,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 24, 36, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        option,
        textAlign: TextAlign.center,
      ),
    );
  }
}
