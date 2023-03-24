import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;
  @override
  Widget build(BuildContext context) {
    //getx fitur
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;
    AppBar myAppBar() {
      return AppBar(
        title: Text('Home'),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: Get.height * 0.3,
            color: Colors.amber,
            child: LayoutBuilder(builder: (context, constraints) {
              double lebarKuning = constraints.maxWidth;
              double tinggiKuning = constraints.maxHeight;
              return Stack(
                children: [
                  Container(
                    width: lebarKuning * 0.7,
                    height: tinggiKuning,
                    color: Colors.red,
                  ),
                  Container(
                    width: lebarKuning * 0.3,
                    height: tinggiKuning,
                    color: Colors.blue,
                  ),
                ],
              );
            }),
          ),
          Container(
            width: Get.width,
            height: Get.height * 0.3,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
