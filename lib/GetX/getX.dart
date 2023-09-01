import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_1/GetX/first_page.dart';
import 'package:projek_1/GetX/second_page.dart';

import 'contollers/tap_controller.dart';

class getx_sim extends StatelessWidget {
  const getx_sim({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (tapController){
              return Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)
                ),
                child: Center(child: Text(tapController.x.toString(), style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ), )),
              );
            }),
            GestureDetector(
                onTap: (){
                controller.increaseX();
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)
                  ),
                  child: Center(child: Text("Increase", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ), )),
                )
            ),
            GestureDetector(
                onTap: (){
                  Get.to(()=>FirstPage());
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)
                  ),
                  child: Center(child: Text("Go to the First page!", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ), )),
                )
            ),
            GestureDetector(
                onTap: (){
                  Get.to(()=>SecondPage());
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)
                  ),
                  child: Center(child: Text("Go to the Second Page!", style: TextStyle(
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
