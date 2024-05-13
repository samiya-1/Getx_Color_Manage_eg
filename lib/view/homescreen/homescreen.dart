import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcolormanage/controller/homescreencontroller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    HomescreenController controller = Get.put(HomescreenController());
    return GetBuilder<HomescreenController>(
      builder: (_) => Scaffold(
        backgroundColor: controller.scaffoldColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => controller.oncolorclick(Colors.brown),
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () => controller.oncolorclick(Colors.red),
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () => controller.oncolorclick(Colors.blue),
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
