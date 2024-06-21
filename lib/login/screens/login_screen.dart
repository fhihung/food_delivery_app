import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/login/bloc/login_bloc.dart';
import 'package:food_delivery_app/login/bloc/login_state.dart';
import 'package:food_delivery_app/login/widgets/login_form.dart';
import 'package:food_delivery_app/login/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: AppSpacingStyle.paddingWithAppBarHeight,
              child: Column(
                children: [
                  /// Logo, Title, Subtitle
                  LoginHeader(
                    image: AssetImage(
                      dark ? Assets.logos.tStoreSplashLogoWhite.path : Assets.logos.tStoreSplashLogoBlack.path,
                    ),
                    title: AppTexts.loginTitle,
                    subTitle: AppTexts.loginSubTitle,
                  ),

                  /// Form
                  const LoginForm(),

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
      },
    );
  }
}
