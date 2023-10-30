
import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';

class InkWellIconButton extends StatelessWidget {
  const InkWellIconButton({
    super.key, required this.onTap, this.background, required this.icon, this.height, this.width, 
  });
   final double? height;
  final  double? width;
  final VoidCallback onTap;
  final Color? background;
  final Icon  icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child:  Center(
          child: icon
        ),
      ),
    );
  }
}