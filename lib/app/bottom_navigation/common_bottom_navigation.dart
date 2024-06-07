import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:food_delivery_app/app/setting/screens/setting_screen.dart';
import 'package:food_delivery_app/app/shop/screens/shop_screen.dart';
import 'package:food_delivery_app/utils/utils.dart';
import 'package:iconsax/iconsax.dart';

import '../home/screens/home_screen.dart';

class CommonBottomNavigation extends StatelessWidget {
  const CommonBottomNavigation({super.key});

  final List<Widget> screens = const [
    HomeScreen(),
    ShopScreen(),
    // FavoriteScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return BlocProvider(
      create: (context) => BottomNavigationBloc(),
      child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: state.selectedIndex,
              onDestinationSelected: (index) {
                context.read<BottomNavigationBloc>().add(
                      BottomNavigationIndexChanged(index: index),
                    );
              },
              backgroundColor: dark ? AppColors.black : AppColors.white,
              indicatorColor: dark ? AppColors.white.withOpacity(0.1) : AppColors.black.withOpacity(0.1),
              destinations: [
                NavigationDestination(
                  selectedIcon: Icon(
                    Iconsax.home5,
                    color: dark ? AppColors.white : AppColors.black,
                  ),
                  icon: Icon(
                    Iconsax.home_1,
                    color: dark ? AppColors.white : AppColors.black,
                  ),
                  label: 'Home',
                ),
                NavigationDestination(
                  selectedIcon: Icon(
                    Iconsax.shop5,
                    color: dark ? AppColors.white : AppColors.black,
                  ),
                  icon: Icon(
                    Iconsax.shop,
                    color: dark ? AppColors.white : AppColors.black,
                  ),
                  label: 'Store',
                ),
                NavigationDestination(
                  selectedIcon: Icon(
                    Iconsax.heart5,
                    color: dark ? AppColors.white : AppColors.black,
                  ),
                  icon: Icon(
                    Iconsax.heart,
                    color: dark ? AppColors.white : AppColors.black,
                  ),
                  label: 'Wishlist',
                ),
                NavigationDestination(
                  selectedIcon: Icon(
                    Iconsax.user,
                    color: dark ? AppColors.white : AppColors.black,
                  ),
                  icon: Icon(
                    Iconsax.user,
                    color: dark ? AppColors.white : AppColors.black,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
            body: screens[state.selectedIndex],
          );
        },
      ),
    );
  }
}
