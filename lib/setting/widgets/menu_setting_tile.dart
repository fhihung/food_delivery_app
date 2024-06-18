import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class MenuSettingTile extends StatelessWidget {
  const MenuSettingTile({
    required this.title,
    required this.icon,
    required this.subtitle,
    this.trailing,
    super.key,
    this.onTap,
  });

  final String title;
  final IconData icon;
  final void Function()? onTap;
  final String subtitle;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: AppColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
