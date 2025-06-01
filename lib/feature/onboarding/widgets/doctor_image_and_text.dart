import 'package:doctor_app/core/helpers/images.dart';
import 'package:doctor_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(ImagesManager.doctorWwithOpecLlogo),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withValues(alpha: 0.0)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14 ,0.4]
            )
          ),
          child: Image.asset(ImagesManager.doctorOnbording)),
           Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Text('Best Doctor \nAppintment App' ,style: TextStyleManager.getS32BlueW700.copyWith(height: 1.4),textAlign: TextAlign.center,))
      ],
    );
  }
}