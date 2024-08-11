import 'package:faq_accordion/components/accordion_item.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Image.asset("assets/images/Background.png"),
          ],
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 3,
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(3, 3))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/Star.png", width: 30),
                      const SizedBox(width: 10),
                      const Text(
                        "FAQs",
                        style: TextStyle(
                          fontSize: 32,
                          color: Color.fromRGBO(45, 22, 48, 1),
                          fontVariations: [FontVariation("wght", 700)],
                        ),
                      ),
                    ],
                  ),
                  const AccordionItem(
                    title: "What is Frontend Mentor, and how will it help me?",
                    isOpen: true,
                  ),
                  const Text(
                    "Frontend Mentor offers realistic coding challenges to help developers improve their frontend coding skills with projects in HTML, CSS, and JavaScript. It's suitable for all levels and ideal for portfolio building.",
                    style: TextStyle(
                      color: Color.fromRGBO(123, 113, 125, 1),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      color: Color.fromRGBO(243, 230, 253, 1),
                    ),
                  ),
                  const AccordionItem(
                      title: "Is Frontend Mentor free?", isOpen: false),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      color: Color.fromRGBO(243, 230, 253, 1),
                    ),
                  ),
                  const AccordionItem(
                      title:
                          "Can I use Frontend Mentor projects in my portfolio?",
                      isOpen: false),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      color: Color.fromRGBO(243, 230, 253, 1),
                    ),
                  ),
                  const AccordionItem(
                      title: "How can I get help if I'm stuck on a challenge?",
                      isOpen: false),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
