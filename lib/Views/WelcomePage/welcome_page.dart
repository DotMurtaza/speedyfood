import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:speedy_food/Views/LoginScreen/login_screen.dart';
import 'package:speedy_food/Views/Widgets/custom_button.dart';
import 'package:speedy_food/Views/Widgets/height_widget.dart';
import 'package:speedy_food/constants/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        //  height: Adaptive.h(100),
        width: Adaptive.w(100),
        child: Stack(
          children: [
            SizedBox(
              height: Adaptive.h(80),
              width: Adaptive.w(100),
              child: Image.asset(
                "assets/images/food.jpg",
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
                // top: ,
                child: Container(
              margin: EdgeInsets.only(top: Adaptive.h(65)),
              // padding: EdgeInsets.only(top: Adaptive.h(70)),
              height: Adaptive.h(70),
              width: Adaptive.w(100),
              decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.5),
                //     spreadRadius: 5,
                //     blurRadius: 7,
                //     offset: Offset(0, 0),
                //   )
                // ],
                gradient: LinearGradient(
                  colors: [Colors.white60, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Column(
                  children: [
                    SizedBox(
                      height: Adaptive.h(2),
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Adaptive.px(38),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: Adaptive.h(8),
                    ),
                    SizedBox(
                      width: Adaptive.w(70),
                      child: const Text(
                        "The customer app helps the customer to access the online food ordering platforms, search for the right restaurant or the dish they want to order, place their orders and pay easily",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const HeightBox(
                      height: 5,
                    ),
                    CustomButton(
                      onTap: () {
                        Get.offAll(LoginPage());
                      },
                      title: "Start",
                    )
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
