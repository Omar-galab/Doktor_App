import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForm extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
   final bool? isObscure;
  final Widget? suffixIcon;

  const CustomTextForm({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    this.inputTextStyle,
     this.suffixIcon, this.isObscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        
        fillColor: ColorsManager.mainFormGray,
        filled: true,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        hintText: hintText,
        hintStyle: TextStyleManager.getS14W400.copyWith(
          color: ColorsManager.mainDarkBlue,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: ColorsManager.mainlightGray,
            width: 1.3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.w),
        ),

        suffixIcon:
            isPassword
                ? suffixIcon
                : null,
      ),
      obscureText: isObscure ?? false,
      style: TextStyleManager.getS14W400,
    );
  }
}
