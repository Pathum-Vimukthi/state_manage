import 'package:flutter/material.dart';
import 'package:state_manage/widget/custom_text.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  final int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: "Third Page",
          fontSize: 30,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              text: "Third Page",
              fontSize: 50,
            ),
            const SizedBox(height: 20),
            CustomText(text: "$count", fontSize: 30),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
