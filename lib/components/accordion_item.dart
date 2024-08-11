import 'package:flutter/material.dart';

class AccordionItem extends StatelessWidget {
  final String title;
  final bool isOpen;
  const AccordionItem({super.key, required this.title, required this.isOpen});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(32, 20, 33, 1),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Image.asset(
              isOpen ? "assets/images/Minus.png" : "assets/images/Plus.png",
              width: 30),
        ],
      ),
    );
  }
}
