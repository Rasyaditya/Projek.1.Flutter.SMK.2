import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClickController extends GetxController {
  TextEditingController addKucing = TextEditingController();
  TextEditingController setKamar = TextEditingController();
  TextEditingController idPengurus = TextEditingController();
  TextEditingController namaPengurus = TextEditingController();

  RxString kamar = "".obs;
  RxInt Pengunjung = RxInt(1);
  RxBool isOpen = RxBool(false);

  RxList<String> listKucing = RxList<String>([]);
  RxMap<String, String> Pengurus = RxMap<String, String>({});

  void classClose(value) {
    isOpen(value);
  }

  void decreasePengunjung() {
    Pengunjung.value--;
    print(Pengunjung);
  }

  void increasePengunjung() {
    Pengunjung.value++;
    print(Pengunjung);
  }

  void setNamaKamar(String nama) {
    kamar.value = nama;
  }

  void addNamaKucing(String kucing) {
    listKucing.add(kucing);
  }

  void addPengurus(String idPengurus, String namaPengurus) {
    Pengurus[idPengurus] = namaPengurus;
  }
}
