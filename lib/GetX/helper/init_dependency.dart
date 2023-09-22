import 'package:get/get.dart';
import 'package:projek_1/GetX/contollers/list_controller.dart';
import 'package:projek_1/GetX/contollers/tap_controller.dart';

class InitDep implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=>TapController());
    Get.lazyPut(()=>ListController());
  }

}