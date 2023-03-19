import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:speedy_food/Views/LoginScreen/login_screen.dart';
import 'package:speedy_food/Views/WelcomePage/welcome_page.dart';
import 'package:speedy_food/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    called();
    super.initState();
  }

  called() async {
    Future.delayed(Duration(seconds: 5), () async {
      WidgetsFlutterBinding.ensureInitialized();
      // Get.offAll(LandingScreen());
      Get.offAll(() => WelcomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: Adaptive.w(130),
              height: Adaptive.h(45),
              child: Image.asset("assets/images/logo.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Speedy Food",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Adaptive.px(38),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: Adaptive.w(5),
              ),
              SpinKitChasingDots(
                color: Colors.white,
                size: 50.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
