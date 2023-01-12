import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
          color: const Color.fromRGBO(213, 213, 213, 1),
        ),
      ),
      child: IconButton(
        onPressed: () => Navigator.pop(context),
        color: const Color.fromRGBO(75, 74, 75, 1),
        icon: const Icon(Icons.navigate_before),
      ),
    );
  }
}
