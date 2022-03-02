import 'package:get/get.dart';

class Dimensions {
  //device height is 756
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.52;
  static double pageViewController = screenHeight / 4.2;
  static double pageViewTextController = screenHeight / 6.87;

  static double height10 = screenHeight / 75.6;
  static double height20 = screenHeight / 37.8;
  static double height15 = screenHeight / 50.4;

  static double font20 = screenHeight / 37.8;
}
