import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/app.dart'; // Assuming this contains AppTexts, AppSizes, TImages, TDeviceUtils
import 'package:food_delivery_app/app/onboarding/bloc/onboarding_bloc.dart';
import 'package:food_delivery_app/app/onboarding/bloc/onboarding_event.dart';
import 'package:food_delivery_app/app/onboarding/bloc/onboarding_state.dart';
import 'package:food_delivery_app/app/onboarding/widgets/circular_button_widget.dart';
import 'package:food_delivery_app/app/onboarding/widgets/onboarding_page_widget.dart';
import 'package:food_delivery_app/app/onboarding/widgets/onboarding_skip_widget.dart';
import 'package:food_delivery_app/app/onboarding/widgets/page_indicator_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final List<Widget> listPage = [
    const OnBoardingPage(
      title: AppTexts.onBoardingTitle1,
      subtitle: AppTexts.onBoardingSubTitle1,
      image: TImages.onBoardingImage1,
    ),
    const OnBoardingPage(
      title: AppTexts.onBoardingTitle2,
      subtitle: AppTexts.onBoardingSubTitle2,
      image: TImages.onBoardingImage2,
    ),
    const OnBoardingPage(
      title: AppTexts.onBoardingTitle3,
      subtitle: AppTexts.onBoardingSubTitle3,
      image: TImages.onBoardingImage3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingBloc(),
      child: Builder(
        builder: (context) {
          // Obtain the OnBoardingBloc instance
          final bloc = context.read<OnBoardingBloc>();

          return BlocBuilder<OnBoardingBloc, OnBoardingState>(
            builder: (context, state) {
              return Scaffold(
                body: Stack(
                  children: [
                    // Scrollable Page View
                    PageView(
                      controller: state.pageController ?? PageController(),
                      onPageChanged: (index) {
                        bloc.add(OnBoardingPageChanged(id: index));
                      },
                      children: listPage,
                    ),

                    // Skip Button
                    Positioned(
                      top: TDeviceUtils.getAppBarHeight(),
                      right: AppSizes.defaultSpace,
                      child: OnBoardingSkip(
                        onPressed: () {
                          // Handle skip action
                          bloc.add(OnBoardingPageChanged(id: listPage.length - 1));
                        },
                      ),
                    ),

                    // Page Indicator
                    Positioned(
                      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
                      left: AppSizes.defaultSpace,
                      child: PageIndicatorWidget(
                        controller: state.pageController ?? PageController(),
                        onDotClicked: (index) {
                          bloc.add(OnBoardingPageChanged(id: index));
                        },
                      ),
                    ),

                    // Next Button
                    Positioned(
                      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
                      right: AppSizes.defaultSpace,
                      child: CircularButton(
                        onPressed: () {
                          bloc.add(const NextPage());
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
