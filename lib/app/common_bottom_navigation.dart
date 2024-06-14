import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/favorite/screens/favorite_screen.dart';
import 'package:food_delivery_app/home/screens/home_screen.dart';
import 'package:food_delivery_app/setting/screens/setting_screen.dart';
import 'package:food_delivery_app/shop/screens/shop_screen.dart';
import 'package:iconsax/iconsax.dart';

class CommonBottomNavigation extends StatefulWidget {
  const CommonBottomNavigation({super.key});

  @override
  State<CommonBottomNavigation> createState() => _CommonBottomNavigationState();
}

class _CommonBottomNavigationState extends State<CommonBottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const ShopScreen(),
    const FavoriteScreen(),
    const SettingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
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
      body: _screens[_selectedIndex],
    );
  }
}
