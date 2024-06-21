import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/app/storage_service.dart';
import 'package:food_delivery_app/login/screens/login_screen.dart';
import 'package:food_delivery_app/setting/widgets/menu_setting_tile.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final storageService = StorageService();
    final dark = THelperFunctions.isDarkMode(context);
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
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                AppSizes.defaultSpace,
              ),
              child: Column(
                /// Account Setting
                children: [
                  CommonSectionHeading(
                    color: dark ? Colors.white : Colors.black,
                    title: 'Account Setting',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems / 2,
                  ),
                  MenuSettingTile(
                    title: 'Account',
                    icon: Iconsax.user,
                    subtitle: 'Update your profile',
                    onTap: () {},
                  ),
                  MenuSettingTile(
                    title: 'My Orders',
                    icon: Iconsax.user,
                    subtitle: 'In-progress, Delivered, Cancelled',
                    onTap: () {},
                  ),
                  MenuSettingTile(
                    title: 'My Coupons',
                    icon: Iconsax.user,
                    subtitle: 'List of all coupons',
                    onTap: () {},
                  ),
                  MenuSettingTile(
                    title: 'Notification',
                    icon: Iconsax.user,
                    subtitle: 'Set notification preference',
                    onTap: () {},
                  ),
                  MenuSettingTile(
                    title: 'Account Privacy',
                    icon: Iconsax.user,
                    subtitle: 'Manage your privacy and security',
                    onTap: () {},
                  ),
                  CommonSectionHeading(
                    color: dark ? Colors.white : Colors.black,
                    title: 'Other',
                    showTextButton: false,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems / 2,
                  ),
                  MenuSettingTile(
                    title: 'Help & Support',
                    icon: Iconsax.user,
                    subtitle: 'FAQ, Contact Us',
                    onTap: () {},
                  ),
                  MenuSettingTile(
                    title: 'About Us',
                    icon: Iconsax.user,
                    subtitle: 'About our company',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        await storageService.clear();
                        await Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Container(
                        child: Text('Sign Out'),
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
