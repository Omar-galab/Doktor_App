import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: ColorsManager.mainlightGray,
            thickness: 1.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            'Or Login With',
            style: TextStyleManager.getS10W400.copyWith(
              color: ColorsManager.maingray,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: ColorsManager.mainlightGray,
            thickness: 1.h,
          ),
        ),
      ],
    );
  }
}