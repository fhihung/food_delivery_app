import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedContainer(
              child: Column(
                children: [
                  CommonAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context).textTheme.headlineMedium!.apply(
                            color: AppColors.white,
                          ),
                    ),
                  ),
                  ListTile(
                    leading: CircularImage(
                      image: Assets.images.reviews.reviewProfileImage1.path,
                      width: 50,
                      height: 50,
                      padding: 0,
                    ),
                    title: Text(
                      'John Doe',
                      style: Theme.of(context).textTheme.headlineMedium!.apply(
                            color: AppColors.white,
                          ),
                    ),
                    subtitle: Text(
                      'support@gmail.com',
                      style: Theme.of(context).textTheme.labelMedium!.apply(
                            color: AppColors.white,
                          ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.edit,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
