import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/sign_up/bloc/sign_up_bloc.dart';
import 'package:food_delivery_app/sign_up/bloc/sign_up_event.dart';
import 'package:food_delivery_app/sign_up/bloc/sign_up_state.dart';
import 'package:food_delivery_app/sign_up/controller/sign_up_controller.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final addressController = TextEditingController();
    final phoneNumberController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => SignUpBloc(SignUpController()),
        child: SingleChildScrollView(
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
                BlocConsumer<SignUpBloc, SignUpState>(
                  listener: (context, state) {
                    if (state.status == SignUpStatus.success) {
                      // Navigate to the next screen or show a success message
                    } else if (state.status == SignUpStatus.failure) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.errorMessage)),
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state.status == SignUpStatus.loading) {
                      return Center(child: CircularProgressIndicator());
                    }

                    return Form(
                      child: Column(
                        children: [
                          /// Username
                          TextFormField(
                            controller: usernameController,
                            decoration: const InputDecoration(
                              labelText: AppTexts.username,
                              prefixIcon: Icon(Iconsax.user_edit),
                            ),
                          ),
                          const SizedBox(height: AppSizes.spaceBtwInputFields),

                          /// Address
                          TextFormField(
                            controller: addressController,
                            decoration: const InputDecoration(
                              labelText: "Address",
                              prefixIcon: Icon(Iconsax.location),
                            ),
                          ),
                          const SizedBox(height: AppSizes.spaceBtwInputFields),

                          /// Phone Number
                          TextFormField(
                            controller: phoneNumberController,
                            decoration: const InputDecoration(
                              labelText: AppTexts.phoneNo,
                              prefixIcon: Icon(Iconsax.call),
                            ),
                          ),
                          const SizedBox(height: AppSizes.spaceBtwInputFields),

                          /// Password
                          TextFormField(
                            controller: passwordController,
                            decoration: const InputDecoration(
                              labelText: AppTexts.password,
                              prefixIcon: Icon(Iconsax.password_check),
                              suffixIcon: Icon(Iconsax.eye_slash),
                            ),
                          ),
                          const SizedBox(height: AppSizes.spaceBtwInputFields),

                          /// Confirm Password
                          TextFormField(
                            controller: confirmPasswordController,
                            decoration: const InputDecoration(
                              labelText: 'Confirm Password',
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
                                if (passwordController.text == confirmPasswordController.text) {
                                  context.read<SignUpBloc>().add(
                                        SignUpSubmitted(
                                          account: usernameController.text,
                                          password: passwordController.text,
                                          address: addressController.text,
                                          phoneNumber: phoneNumberController.text,
                                        ),
                                      );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("Passwords do not match")),
                                  );
                                }
                              },
                              child: const Text(AppTexts.createAccount),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
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
      ),
    );
  }
}
