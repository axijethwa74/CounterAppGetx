// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:getxcounterapp/controller/controller.dart';

void main(List<String> args) {
  runApp(myapp());
}

// ignore: camel_case_types
class myapp extends StatelessWidget {
  myapp({Key? key}) : super(key: key);
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "getX State Management System",
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Center(child: Text("GETX SMS")),
          ),
          body:  Center(
              child: Obx(() => Text(
                    controller.count.value.toString(),
                    style: const TextStyle(
                      fontSize: 50.0,
                    ),
                  ))),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.increment();
              Get.snackbar('INCREMENT', 'Updated value is now ${controller.count.value}',snackPosition: SnackPosition.BOTTOM,
                dismissDirection: DismissDirection.horizontal);
            },
            backgroundColor: Colors.black,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
