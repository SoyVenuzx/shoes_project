import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoes_project/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //* Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //* Update current Index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //* Jump to the specific dot selected page
  void dotNavegationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //* Update current index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(currentPageIndex.value);

      pageController.animateToPage(
        page,
        duration:
            const Duration(milliseconds: 300), // Adjust the duration as needed
        curve: Curves.easeInOut, // Adjust the animation curve if desired
      );
    }
  }

  //* Update current index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
