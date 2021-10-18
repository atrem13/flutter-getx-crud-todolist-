import 'package:flutter/material.dart';
import 'package:openaccess/common/colors/colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class SkeletonLoading extends StatelessWidget {
  double? height;
  double? width;
  SkeletonLoading({
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      color: AppColors.grey.withOpacity(0.1),
      child: Container(
        color: AppColors.grey.withOpacity(0.1),
        height: height,
        width: width,
      ),
    );

    // return SkeletonText(height: height!);
  }
}
