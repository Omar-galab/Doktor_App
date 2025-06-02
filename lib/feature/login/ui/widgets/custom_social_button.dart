import 'package:doctor_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSocialButton extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;
  const CustomSocialButton({super.key, required this.image, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 60.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: ColorsManager.mainIconGray,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black.withValues(alpha: 0.1),
              offset: const Offset(0, 2),
            ),
            
          ],
        ),
        child: Padding(
          padding:  EdgeInsets.all(15.w),
          child: Image.asset(image, 
         fit: BoxFit.contain,),
        ),
      ),
    );
  }
}
