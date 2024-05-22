import 'package:flutter/material.dart';
import 'package:shoes_project/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shoes_project/utils/constants/sizes.dart';
import 'package:shoes_project/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(fontSize: TSizes.fontSizeMd),
        ),
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Saltar'),
      ),
    );
  }
}
