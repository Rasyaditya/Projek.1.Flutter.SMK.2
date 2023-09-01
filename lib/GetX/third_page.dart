import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_1/GetX/getX.dart';

import 'contollers/tap_controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: (){
                  Get.to(()=>getx_sim());
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)
                  ),
                  child: Center(child: Text("X value" + Get.find<TapController>().x.toString() , style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ), )),
                )
            ),
          ],
        ),
      ),
    );
  }
}
