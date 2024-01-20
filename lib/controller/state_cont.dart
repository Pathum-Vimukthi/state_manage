import 'package:get/get.dart';

class StateControllere extends GetxController {
  var count = 0.obs;
  increment() => count++;
  decrement() => count--;
}
