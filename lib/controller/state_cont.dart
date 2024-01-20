import 'package:get/get.dart';

class StateControllere extends GetxController {
  var count = 0.obs;
  // increment() => count++;
  // decrement() => count--;
  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }
}
