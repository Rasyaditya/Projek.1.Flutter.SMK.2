import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_1/GetX/getX.dart';

import 'contollers/list_controller.dart';
import 'contollers/tap_controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TapController controller = Get.find();
    ListController listController = Get.put(ListController());
    
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text(
                        "Total Value  " + Get.find<TapController>().z.toString(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text(
                        "Y value " + Get.find<TapController>().y.value.toString(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                )
              ],
            )),
            GestureDetector(
                onTap: () {
                  Get.to(() => getx_sim());
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text(
                    "X value " + Get.find<TapController>().x.toString(),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                )),
            GestureDetector(
                onTap: () {
                  //Get.to(()=>getx_sim());
                  Get.find<TapController>().increaseY();
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text(
                    "Increase Y ",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                )),

            GestureDetector(
                onTap: () {
                  //Get.to(()=>getx_sim());
                  Get.find<TapController>().totalXY();
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text(
                        "Total x+y ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                )),

            GestureDetector(
                onTap: () {
                  //Get.to(()=>getx_sim());
                  Get.find<ListController>().setValues(Get.find<TapController>().z);
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text(
                        "Save Total ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
