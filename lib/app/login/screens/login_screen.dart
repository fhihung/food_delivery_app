import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/app/login/widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title, Subtitle
              AppHeaderWidget(
                image: AssetImage(
                  dark ? Assets.logos.tStoreSplashLogoWhite.path : Assets.logos.tStoreSplashLogoBlack.path,
                ),
                title: AppTexts.loginTitle,
                subTitle: AppTexts.loginSubTitle,
              ),

              /// Form
              const LoginFormWidget(),

              /// Divider
              const AppDividerWidget(text: AppTexts.orSignInWith),

              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              /// Footer
              const AppSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
