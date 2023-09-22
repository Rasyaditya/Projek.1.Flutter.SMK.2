import 'package:get/get.dart';

class ClickController extends GetxController {
  RxInt Kucing = 0.obs;
  RxInt get Pengunjung => Kucing;

  void decreasePengunjung() {
    Pengunjung.value--;
    print(Pengunjung);
  }

  void increasePengunjung() {
    Pengunjung.value++;
    print(Pengunjung);
  }
}
