import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class CurvedContainer extends StatelessWidget {
  const CurvedContainer({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: AppColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  backgroundColor: AppColors.white.withOpacity(0.1),
                ),
              ),
              if (child != null) child!,
            ],
          ),
        ),
      ),
    );
  }
}