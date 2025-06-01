import 'package:doctor_app/core/routing/routs.dart';
import 'package:doctor_app/core/theming/text_style.dart';
import 'package:doctor_app/feature/onboarding/widgets/custom_button.dart';
import 'package:doctor_app/feature/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctor_app/feature/onboarding/widgets/doctor_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(top: 30.h, bottom: 30.h ,),
            child:  Column(children: [
                        const DoctorLogoAndName(), 
                         SizedBox(height: 30.h),  
                        const DoctorImageAndText(), 
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30.w),
                       child:  Column(
                          children: [
                            Text('Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                            style: TextStyleManager.getS10W400,
                            textAlign: TextAlign.center,) ,
                            SizedBox(height: 30.h),
                            CustomButton(onPressed: (){
                              GoRouter.of(context).push(Routs.loginScreen);
                            } , text: "Get Started",),

                          ],
                        )   
                        )                       
            ],),
          ),
        )
      ),
    );
  }
}