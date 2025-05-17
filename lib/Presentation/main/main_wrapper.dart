import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:traviki/core/vectors/app_vectors.dart';

import 'package:traviki/presentation/main/home/home.dart';
import 'package:traviki/presentation/main/search/search_page.dart';
import 'package:traviki/presentation/main/settings/settings_page.dart';

class MainWrapper extends StatelessWidget {
  final NavigationController controller = Get.put(NavigationController());

  MainWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xFFF5F5F5)),
    );
    return Obx(
      () => Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: controller.pages,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Theme(
                data: Theme.of(context).copyWith(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                ),
                child: BottomNavigationBar(
                  currentIndex: controller.currentIndex.value,
                  onTap: (index) => controller.currentIndex.value = index,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white54,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: [
                    BottomNavigationBarItem(
                      icon:
                          controller.currentIndex.value == 0
                              ? SvgPicture.asset(AppVectors.homeFilled)
                              : SvgPicture.asset(AppVectors.home),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon:
                          controller.currentIndex.value == 1
                              ? SvgPicture.asset(AppVectors.geoFilled)
                              : SvgPicture.asset(AppVectors.geo),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: '', // Empty label
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  var currentIndex = 0.obs;

  final List<Widget> pages = [
    const Home(),
    const SearchPage(),
    const SettingsPage(),
  ];
}
