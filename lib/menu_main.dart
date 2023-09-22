import 'package:flutter/material.dart';
import 'Pratekkan GetX/Data Penginapan Kucing/dashboard.dart';
import 'add_interactivity.dart';
import 'better_help.dart';
import 'GetX/getX.dart';
import 'latihan_layout.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  const layout(),
                ),
              );
            }, child: Text('Latihan Layout')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  const interaksi(),
                ),
              );
            }, child: Text('Latihan Interactivity')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  const home(),
                ),
              );
            }, child: Text('Latihan Membuat Aplikasi Menu')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  const getx_sim(),
                ),
              );
            }, child: Text('Latihan GetX')),

              ElevatedButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  const CatDashboard(),
                  ),
                );
              }, child: Text('Praktek GetX')),
          ],
        ),
      ),
    );
  }
}
