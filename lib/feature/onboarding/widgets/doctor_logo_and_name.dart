import 'package:doctor_app/core/helpers/images.dart';
import 'package:doctor_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorLogoAndName extends StatelessWidget {
  const DoctorLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(ImagesManager.doctorLogo),
        SizedBox(
          width: 10.w,
        ),
        Text(
          'Doctor',
          style: TextStyleManager.getS24W700,
        )
      ],
    );
  }
}