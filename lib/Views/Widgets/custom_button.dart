import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:speedy_food/constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Adaptive.w(90),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: Adaptive.h(1)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)),
              maximumSize: Size(Adaptive.h(100), Adaptive.h(8)),
              primary: primaryColor,
              textStyle: TextStyle(
                fontSize: Adaptive.px(25),
              )),
          onPressed: onTap,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
