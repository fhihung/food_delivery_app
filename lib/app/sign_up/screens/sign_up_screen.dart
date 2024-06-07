import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/app/sign_up/screens/success_screen.dart';
import 'package:food_delivery_app/app/sign_up/screens/verify_email_screen.dart';
import 'package:iconsax/iconsax.dart';

import '../../router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                AppTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Form
              Form(
                child: Column(
                  children: [
                    /// Name
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: AppTexts.firstName,
                              prefixIcon: Icon(
                                Iconsax.user,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: AppTexts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),

                    /// Username
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: AppTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),

                    /// Email
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: AppTexts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),

                    /// Phone Number
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: AppTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),

                    /// Password
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: AppTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections),

                    /// Term & Condition
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                        ),
                        const SizedBox(width: AppSizes.spaceBtwItems),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '${AppTexts.iAgreeTo} ',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                TextSpan(
                                  text: '${AppTexts.privacyPolicy} ',
                                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: dark ? AppColors.white : AppColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark ? AppColors.white : AppColors.primary,
                                      ),
                                ),
                                TextSpan(
                                  text: '${AppTexts.and} ',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                TextSpan(
                                  text: '${AppTexts.termsOfUse} ',
                                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: dark ? AppColors.white : AppColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark ? AppColors.white : AppColors.primary,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections),

                    /// Sign Up Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerifyEmailScreen(
                                image: Image(
                                  image: Assets.images.animations.sammyLineManReceivesAMail.provider(),
                                ),
                                title: AppTexts.confirmEmail,
                                email: 'dev.phihung@gmail.com',
                                subTitle: AppTexts.confirmEmailSubTitle,
                                continuePressed: () {
                                  Navigator.push<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (context) => SuccessScreen(
                                        image: Image(
                                          image: Assets.images.animations.sammyLineManReceivesAMail.provider(),
                                          width: THelperFunctions.screenWidth(context) * 0.6,
                                        ),
                                        title: AppTexts.yourAccountCreatedTitle,
                                        subTitle: AppTexts.yourAccountCreatedSubTitle,
                                        onPressed: () {
                                          router.go('/home');
                                        },
                                      ),
                                    ),
                                  );
                                },
                                resendPressed: () {},
                              ),
                            ),
                          );
                        },
                        child: const Text(AppTexts.createAccount),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Divider
              const AppDividerWidget(text: AppTexts.orSignUpWith),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Social Buttons
              const AppSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
