import 'package:get/get.dart';

class MainControllers extends GetxController {
  var number = 0.obs;

  int myNumber = 0;

  void addNumber() {
    number.value += 1;
  }

  void minusNumber() {
    number.value -= 1;
    if (number < 1) {
      number.value = 0;
    }
  }

  void multiplyNumber() {
    number.value *= 2;
  }

  void divideNumber() {
    if (number.value != 0) {
      number.value = number.value ~/ 2;
    }
  }

  void countNumber() {
    myNumber += 1;
    update();
  }

  void decreNumber() {
    myNumber -= 1;
    if (myNumber < 1) {
      myNumber = 1;
    }
    update();
  }

  void multiNumber() {
    myNumber *= 2;
    update();
  }
}
