import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:projek_1/Pratekkan%20GetX/Data%20Penginapan%20Kucing/jumlah_controller.dart';

class CatDashboard extends StatelessWidget {
  const CatDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    ClickController clickController = Get.put(ClickController());

    return Scaffold(
      backgroundColor: Color(0xFFE4A5FF),
      appBar: AppBar(
        title: Text('Kapasitas Hotel '),
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
                      'Jumlah Kucing',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(children: [
                            Text('Total Penginap: '),
                            Text(Get.find<ClickController>()
                                .Pengunjung
                                .value
                                .toString()),
                          ]),
                        ),
                        Container(
                          child: Row(children: [
                            IconButton(
                                onPressed: () {
                                  Get.find<ClickController>()
                                      .decreasePengunjung();
                                },
                                icon: Icon(Icons.remove)),
                            IconButton(
                                onPressed: () {
                                  Get.find<ClickController>()
                                      .increasePengunjung();
                                },
                                icon: Icon(Icons.add)),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            'Masih terbuka'), // Saat swith di nyalakan, value text menjadi "Penuh"
                        Switch(value: isNull, onChanged: null),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
