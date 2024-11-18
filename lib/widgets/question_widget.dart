import 'package:flutter/material.dart';
import 'package:orivios_company_demo/core/color.dart';
import 'package:orivios_company_demo/core/ui_helper.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: screenHeight(context) * 0.500,
        width: screenWidth(context) * 0.93,
        color: Colors.transparent,
      ),
      Positioned(
        top: 30,
        child: Container(
          height: screenHeight(context) * 0.450,
          width: screenWidth(context) * 0.93,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 1, color: kblue),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "What was the nickname given to the Hughes H-4 Hercules, a heavy transport flying boat which achieved flight in 1947?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  width: screenWidth(context) * 0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 1, color: kwhite),
                  ),
                  child: Center(child: const Text("Spruce Goose")),
                ),
                Container(
                  height: 40,
                  width: screenWidth(context) * 0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 1, color: kwhite),
                  ),
                  child: Center(child: const Text("Fat Man")),
                ),
                Container(
                  height: 40,
                  width: screenWidth(context) * 0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 1, color: kwhite),
                  ),
                  child: Center(child: const Text("Trojan Horse")),
                ),
                Container(
                  height: 40,
                  width: screenWidth(context) * 0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 1, color: kwhite),
                  ),
                  child: Center(child: const Text("Noahs Ark")),
                ),
              ],
            ),
          ),
        ),
      ),
      Positioned(
        top: 1,
        left: screenWidth(context) * 0.40,
        child: Container(
          height: 53,
          width: 53,
          decoration: BoxDecoration(
            color: kblack,
            shape: BoxShape.circle,
            border: Border.all(
              width: 5,
              color: kblue,
            ),
          ),
          child: const Center(child: Text("30")),
        ),
      ),
    ]);
  }
}
