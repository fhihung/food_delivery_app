import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/app/router.dart';
import 'package:iconsax/iconsax.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTexts.email,
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),

            //Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: AppTexts.password,
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields / 2),

            //Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(AppTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(AppTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Get.to(() => const AppBottomNavigation());
                  // router.go('sign_up');
                },
                child: const Text(AppTexts.signIn),
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            // Sign Up Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  router.go('/sign_up');
                },
                child: const Text(
                  AppTexts.createAccount,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
