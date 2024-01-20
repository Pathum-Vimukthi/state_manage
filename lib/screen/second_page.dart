import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manage/controller/state_cont.dart';
import 'package:state_manage/screen/third_page.dart';
import 'package:state_manage/widget/custom_text.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StateControllere());

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: "Second Page",
          fontSize: 30,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              text: "Second Page",
              fontSize: 50,
            ),
            const SizedBox(height: 20),
            Obx(
              () => CustomText(text: "${c.count}", fontSize: 30),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    c.increment();
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    c.decrement();
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ThirdPage(),
            ),
          );
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
