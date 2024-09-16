import 'package:get/get.dart';
import 'package:web_view_flutter/controller/home_controller.dart';

class Controller_Bin extends Bindings{
  @override
  void dependencies() {
    Get.put<Home_Controller>(Home_Controller());
  }

}