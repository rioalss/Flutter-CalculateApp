import 'package:calc_app/controllers/calc_controler.dart';
import 'package:get/get.dart';

class Binding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CalcController());
  }

}