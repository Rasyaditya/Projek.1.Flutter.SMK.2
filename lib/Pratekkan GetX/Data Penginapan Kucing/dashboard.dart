import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'package:projek_1/Pratekkan%20GetX/Data%20Penginapan%20Kucing/editRuangan.dart';

import 'package:projek_1/Pratekkan%20GetX/Data%20Penginapan%20Kucing/jumlah_controller.dart';
import 'package:projek_1/Pratekkan%20GetX/Data%20Penginapan%20Kucing/tambahKucing.dart';
import 'package:projek_1/Pratekkan%20GetX/Data%20Penginapan%20Kucing/tambahPengurus.dart';

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
        actions: [
          IconButton(
            onPressed: () {
              Get.bottomSheet(SafeArea(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 120,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => EditRuangan());
                        },
                        child: Text(
                          'Edit Nama Ruangan',
                          // style: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => TambahKucing());
                        },
                        child: Text(
                          'Tambahkan Kucing',
                          // style: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => TambahPengurus());
                        },
                        child: Text(
                          'Tambah Pengurus',
                          // style: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ));
            },
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
          )
        ],
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
                      '${clickController.kamar}',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Obx(
                            () => Row(children: [
                              Text('Total Penginap: ' +
                                  Get.find<ClickController>()
                                      .Pengunjung
                                      .value
                                      .toString()),
                            ]),
                          ),
                        ),
                        Container(
                          child: Row(children: [
                            IconButton(
                                onPressed: () {
                                  if (clickController.Pengunjung != 1 &&
                                      clickController.isOpen.value != true) {
                                    clickController.decreasePengunjung();
                                  }
                                },
                                icon: Icon(Icons.remove)),
                            IconButton(
                                onPressed: () {
                                  if (clickController.Pengunjung != 37 &&
                                      clickController.isOpen.value != true) {
                                    clickController.increasePengunjung();
                                  }
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
                        Obx(() => Switch(
                            value: clickController.isOpen.value,
                            onChanged: (value) =>
                                {clickController.classClose(value)})),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
                      'Nama Kucing',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    child: Obx(() => ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: clickController.listKucing.length,
                          itemBuilder: (context, index) {
                            return Text(
                              clickController.listKucing.value[index],
                            );
                          },
                        )),
                  ),
                ],
              ),
            ),
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
                      'Nama Pengurus',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => ListView.builder(
                              shrinkWrap: true,
                              itemCount: clickController.Pengurus.length,
                              itemBuilder: (context, index) {
                                MapEntry PengurusEntry = clickController
                                    .Pengurus.entries
                                    .elementAt(index);
                                return Text(
                                    "${PengurusEntry.key} ${PengurusEntry.value}");
                              },
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
