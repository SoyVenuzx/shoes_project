import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoes_project/common/widgets/login_signup/form_divider.dart';
import 'package:shoes_project/common/widgets/login_signup/social_buttons.dart';
import 'package:shoes_project/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:shoes_project/utils/constants/sizes.dart';
import 'package:shoes_project/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              //* Form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              //* Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwItems),

              //* Social Buttons
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
