import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/count_controller.dart';

class W2 extends StatelessWidget {
  const W2({super.key});

  @override
  Widget build(BuildContext context) {
    CountController controller = Get.find();
    return Container(
      color: Colors.deepOrange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(controller.count.toString())),
          ElevatedButton(onPressed:(){controller.reset();}, child: const Text('Reset'))
        ],
      ),
    );
  }
}
