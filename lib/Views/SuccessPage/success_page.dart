import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:speedy_food/Views/Widgets/height_widget.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/Ellipse.png",
            width: Adaptive.w(100),
            fit: BoxFit.cover,
            height: Adaptive.h(16),
          ),
          const HeightBox(height: 10),
        ],
      ),
    );
  }
}
