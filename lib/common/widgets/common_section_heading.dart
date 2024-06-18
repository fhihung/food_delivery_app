import 'package:flutter/material.dart';

class CommonSectionHeading extends StatelessWidget {
  const CommonSectionHeading({
    required this.title,
    super.key,
    this.onPressed,
    this.showTextButton = true,
    this.textButton = 'View All',
    this.color = Colors.white,
  });
  final String title;
  final void Function()? onPressed;
  final bool showTextButton;
  final String textButton;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: color),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        if (showTextButton) ...[
          // const SizedBox(width: AppSizes.spaceBtwItems),
          TextButton(
            onPressed: onPressed,
            child: Text(
              textButton,
            ),
          ),
        ],
      ],
    );
  }
}
