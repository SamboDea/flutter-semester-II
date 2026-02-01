import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainControllers extends GetxController {
  var number = 0.obs;
  var str = "hello".obs;
  var lists = [].obs;

  void counterNumber() {
    number.value += 82;
  }

  void mimusNumber() {
    number.value -= 82;
  }
}
