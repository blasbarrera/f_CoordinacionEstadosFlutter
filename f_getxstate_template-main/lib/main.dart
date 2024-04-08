import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ui/pages/main_page.dart';
import 'ui/controller/count_controller.dart';

void main() {
  Get.put(CountController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'GetX Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('GetX Demo'),
          ),
          body: const MainPage(),
        ));
  }
}
