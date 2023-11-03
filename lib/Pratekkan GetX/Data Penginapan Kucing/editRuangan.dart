import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:projek_1/Pratekkan%20GetX/Data%20Penginapan%20Kucing/dashboard.dart';

import 'jumlah_controller.dart';

class EditRuangan extends StatelessWidget {
  const EditRuangan({super.key});

  @override
  Widget build(BuildContext context) {
    ClickController clickController = Get.put(ClickController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Pengantian Nama Ruangan'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    )
                  ]),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFAAC9),
                    ),
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    child: Text(
                      'Edit Nama Ruangan',
                    ),
                  ),
                  TextField(
                    controller: clickController.setKamar,
                    onSubmitted: (value) {
                      clickController
                          .setNamaKamar(clickController.setKamar.text);
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        clickController.setNamaKamar(
                          clickController.setKamar.text,
                        );
                        Get.to(() => CatDashboard());
                      },
                      child: Text('Submit'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
