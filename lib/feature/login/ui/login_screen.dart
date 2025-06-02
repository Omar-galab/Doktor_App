
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/text_style.dart';
import 'package:doctor_app/feature/login/ui/widgets/custom_divider.dart';
import 'package:doctor_app/feature/login/ui/widgets/custom_text_form.dart';
import 'package:doctor_app/feature/login/ui/widgets/have_account_or_not_.dart';
import 'package:doctor_app/feature/login/ui/widgets/social_button.dart';
import 'package:doctor_app/feature/onboarding/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70.h),
              Text(
                "Welcome Back",
                style: TextStyleManager.getS24W700.copyWith(
                  color: ColorsManager.mainBlue,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyleManager.getS14W400.copyWith(
                  color: ColorsManager.maingray,
                ),
              ),
              const SizedBox(height: 30),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    const CustomTextForm(hintText: "Email"),
                    const SizedBox(height: 16),
                    CustomTextForm(
                      hintText: "Password",
                      isPassword: true,
                      isObscure: isObscure,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        child: Icon(
                          isObscure ? Icons.visibility_off : Icons.visibility,
                          color: ColorsManager.mainBlue,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password?",
                        style: TextStyleManager.getS13blueW400,
                      ),
                    ),
                    const SizedBox(height: 30),
                    CustomButton(text: 'Login', onPressed: () {}),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const CustomDivider(),
              const SizedBox(height: 30),
              // Login with google, facebook and instgram
              const SocialButton(),
              const SizedBox(height: 20),
              // Already have an account? Sign up
              const HaveAccountOR(),
            ],
          ),
        ),
      ),
    );
  }
}




