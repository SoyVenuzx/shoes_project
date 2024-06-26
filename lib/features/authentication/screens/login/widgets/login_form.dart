import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoes_project/features/authentication/screens/signup/signup.dart';
import 'package:shoes_project/navigation_menu.dart';
import 'package:shoes_project/utils/constants/sizes.dart';
import 'package:shoes_project/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          //* Email
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
                hintText: TTexts.emailHint),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //* Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              hintText: TTexts.passwordHint,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),

          //* Remember Me & Forgot Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //* Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),

              //* Forgot Password
              TextButton(
                onPressed: () {},
                child: const Text(TTexts.forgetPassword),
              )
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          //* Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const NavigationMenu()),
              child: const Text(TTexts.signIn),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          //* Create Account Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const SignUpScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    ));
  }
}
