import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:speedy_food/constants/colors.dart';

class CommonPasswordField extends StatelessWidget {
  final String hintText;
  final errorText;
  final passController;
  final outlineBorder;
  final Function(String)? onChange;
  final showPassword;
  final icon;
  final enable;

  const CommonPasswordField({
    Key? key,
    required this.hintText,
    required this.errorText,
    this.outlineBorder = false,
    this.icon = null,
    required this.passController,
    required this.showPassword,
    this.onChange,
    this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        cursorColor: primaryColor,
        enabled: enable,
        onChanged: onChange,
        //maxLength: 8,
        style: TextStyle(color: primaryColor, fontSize: Adaptive.px(22)),
        keyboardType: TextInputType.visiblePassword,
        obscureText: showPassword.value,
        controller: passController,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: icon,
            suffixIcon: InkWell(
              onTap: (() => showPassword.value = !showPassword.value),
              child: Icon(
                showPassword.value
                    ? Icons.visibility_rounded
                    : Icons.visibility_off_rounded,
                size: 20,
                //color: AppColor.blue,
                color: primaryColor,
              ),
            ),
            labelStyle: const TextStyle(color: primaryColor),
            hintText: hintText,
            errorText: errorText,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            counterText: ''),
      ),
    );
  }
}
