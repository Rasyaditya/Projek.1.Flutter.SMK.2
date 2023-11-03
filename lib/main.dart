import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:projek_1/GetX/helper/init_dependency.dart';
import 'package:projek_1/menu_main.dart';
import 'package:get/get.dart';
import 'GetX/helper/init_controller.dart' as di;

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDep(),
      title: 'Flutter Project',
      home: MenuPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
