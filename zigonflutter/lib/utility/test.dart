import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/utility/network_utility.dart';

class Pageone extends StatelessWidget {
  Pageone({Key? key}) : super(key: key);
  final TestController controller = Get.put(TestController());
  @override
  Widget build(BuildContext context) {
    controller.getDate();
    return GetBuilder<TestController>(builder: (ctrl) {
      return Scaffold(
        body: ctrl.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: ctrl.cats.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        ctrl.getSubCatForCat(index);
                      },
                      child: Container(
                        color: Colors.blueAccent,
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          ctrl.cats[index],
                        ),
                      ),
                    ),
                  );
                }),
      );
    });
  }
}

class TestController extends GetxController {
  bool isLoading = true;
  var data;
  List cats = [];
  List subCat = [];
  getDate() async {
    var url = "https://mocki.io/v1/127516d9-f143-4a22-adc2-0766c51ac235";

    var response = await NetworkHandler.dio.get(url);

    log(response.data.toString());
    data = response.data;
    isLoading = false;
    filterCategories();
  }

  filterCategories() {
    for (int i = 0; i < data["value"].length; i++) {
      cats.add(data["value"][i]['itemGrp']);
    }
    var seen = <String>{};
    cats = cats.where((e) => seen.add(e)).toList();
    log(cats.toString());
    isLoading = false;
    update();
  }

  getSubCatForCat(var index) {
    subCat.clear();
    for (int i = 0; i < data["value"].length; i++) {
      if (data['value'][i]['itemGrp'] == cats[index]) {
        subCat.add(data['value'][i]['itemSubGrp']);
      }
    }
    //Filter Format
    var seen = <String>{};
    //Filter Method
    subCat = subCat.where((e) => seen.add(e)).toList();

    
    log(subCat.toString());
  }
}
