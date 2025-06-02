import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';

class HaveAccountOR extends StatelessWidget {
  const HaveAccountOR({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyleManager.getS14W400.copyWith(
            color: ColorsManager.maingray,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Sign Up",
            style: TextStyleManager.getS10W400.copyWith(
              color: ColorsManager.mainBlue,
            ),
          ),
        ),
      ],
    );
  }
}