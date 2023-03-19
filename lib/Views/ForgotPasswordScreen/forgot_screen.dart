import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:speedy_food/Views/RegisterationPage/registration_page.dart';
import 'package:speedy_food/Views/Widgets/common_password_field.dart';
import 'package:speedy_food/Views/Widgets/custom_button.dart';
import 'package:speedy_food/Views/Widgets/custom_input_field.dart';
import 'package:speedy_food/Views/Widgets/height_widget.dart';
import 'package:speedy_food/Views/Widgets/label_widget.dart';
import 'package:speedy_food/constants/colors.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();
  RxBool isShowPassword = true.obs;
  RxBool isShowConfirmPassword = true.obs;
  RxBool isRememberMe = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/Ellipse.png",
              width: Adaptive.w(100),
              fit: BoxFit.cover,
              height: Adaptive.h(18),
            ),
            const HeightBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Password Recovery",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: Adaptive.px(38)),
              ),
            ),
            const HeightBox(height: 10),
            LabelWidget(label: "Email"),
            CustomInputField(
              hint: "abc@kfueit.edu.pk",
              controller: emailController,
              inputType: TextInputType.emailAddress,
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
              child: Text(
                "Only KFUEIT offical mail",
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
              ),
            ),

            const HeightBox(height: 4),
            Align(
                alignment: Alignment.center,
                child: CustomButton(
                    onTap: () {
                      Get.back();
                      Get.snackbar("Alert",
                          "Password Reset email send to your email please verify and login again");
                      //  Get.back();
                    },
                    title: "Send Password Reset email")),
            // const HeightBox(height: 2),
          ],
        ),
      ),
    );
  }
}
