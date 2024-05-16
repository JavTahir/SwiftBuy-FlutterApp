import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/controllers/home_controller.dart';
import 'package:e_commerce_app/views/cart_screen/caert_screen.dart';
import 'package:e_commerce_app/views/category_screen/category_screen.dart';
import 'package:e_commerce_app/views/home_screen/main_screen.dart';
import 'package:e_commerce_app/views/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navBarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account)
    ];

    var navBody = [
      MainScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value)))
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          unselectedLabelStyle: TextStyle(fontFamily: semibold),
          items: navBarItem,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}

//Obx is typically used to create reactive widgets that rebuild themselves when the observed data changes. 
