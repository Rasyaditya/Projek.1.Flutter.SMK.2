import 'package:get/get.dart';
import 'package:projek_1/GetX/contollers/list_controller.dart';
import 'package:projek_1/GetX/contollers/tap_controller.dart';

Future<void> init() async{
  TapController controller = Get.put(TapController());
  Get.lazyPut(()=>TapController());
  Get.lazyPut(()=>ListController());
}