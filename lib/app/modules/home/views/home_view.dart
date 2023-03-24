import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:tugas1_flutter/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text('HOME'),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.amber,
        child: LayoutBuilder(builder: (context, constraints) {
          double lebarKuning = constraints.maxWidth;
          double tinggiKuning = constraints.maxHeight;
          return Stack(
            children: [
              TextButton(
                onPressed: () => Get.toNamed(Routes.PRODUCT),
                child: Text("PERGI KE TUGAS 2"),
              ),
              Center(
                child: Container(
                  width: lebarKuning * 0.50,
                  height: tinggiKuning * 0.50,
                  color: Colors.red,
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
