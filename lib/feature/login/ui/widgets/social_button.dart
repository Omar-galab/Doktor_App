import 'package:doctor_app/core/helpers/images.dart';
import 'package:doctor_app/feature/login/ui/widgets/custom_social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSocialButton(
          image: ImagesManager.googleIcon,
          onPressed: () {},
        ),
        SizedBox(width: 24.w),
        CustomSocialButton(
          image: ImagesManager.faceBookIcon,
          onPressed: () {},
        ),
        SizedBox(width: 24.w),
        CustomSocialButton(
          image: ImagesManager.instgramIcon,
          onPressed: () {},
        ),
      ],
    );
  }
}