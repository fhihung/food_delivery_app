import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class PromotionSlider extends StatefulWidget {
  const PromotionSlider({
    required this.banners,
    super.key,
  });

  final List<String> banners;

  @override
  _PromotionSliderState createState() => _PromotionSliderState();
}

class _PromotionSliderState extends State<PromotionSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: widget.banners
              .map(
                (url) => RoundedImage(
                  image: url,
                ),
              )
              .toList(),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < widget.banners.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
                  child: CircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: _currentIndex == i ? AppColors.primary : AppColors.grey,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
