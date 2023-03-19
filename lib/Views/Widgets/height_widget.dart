import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HeightBox extends StatelessWidget {
  const HeightBox({
    Key? key,
    required this.height,
  }) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Adaptive.h(height),
    );
  }
}
