import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    this.onPressed,
    super.key,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: const Text(
        AppTexts.skip,
      ),
    );
  }
}
