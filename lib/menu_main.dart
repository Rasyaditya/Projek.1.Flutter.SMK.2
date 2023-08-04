import 'package:flutter/material.dart';
import 'add_interactivity.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  layout(),
                ),
              );
            }, child: Text('Latihan Layout')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  interaksi(),
                ),
              );
            }, child: Text('Latihan Interactivity'))
          ],
        ),
      ),
    );
  }
}
