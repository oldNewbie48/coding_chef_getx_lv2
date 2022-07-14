import 'package:coding_chef_getx_lv2_220711/controller/cart_controller.dart';
import 'package:coding_chef_getx_lv2_220711/view/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  final controller = Get.put(Controller());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chef Shop'),
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.view_list_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
          child:
          controller.productList.isEmpty ? Center(
              child: CircularProgressIndicator()):
          Obx( () =>
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: controller.productList.length,
              itemBuilder: (context, index) {

                return ProductTile(

                  controller.productList[index],
                );
              },

            ),
          ),
        ),

      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: GetX<Controller>(builder: (controller) {
          return Text(
            'Item ${cartController.count.toString()}',
            style: TextStyle(fontSize: 20),
          );
        }),
        icon: Icon(Icons.add_shopping_cart_rounded),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}

