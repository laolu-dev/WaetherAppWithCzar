import 'package:flutter/material.dart';

class UtilityButton extends StatelessWidget {
  const UtilityButton({super.key});

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
        onPressed: () {},
        color: const Color.fromRGBO(75, 74, 75, 1),
        icon: const Icon(Icons.swap_horiz),
      ),
    );
  }
}