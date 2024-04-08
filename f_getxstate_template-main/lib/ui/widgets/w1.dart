import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/count_controller.dart';

class W1 extends StatelessWidget {
  const W1({super.key});

  @override
  Widget build(BuildContext context) {
    CountController controller = Get.find();
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(controller.count.toString())),
          ElevatedButton(onPressed:(){controller.increment();}, child: const Text('Increment'))
        ],
      ),
    );
  }
}
