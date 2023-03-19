import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WidthBox extends StatelessWidget {
  const WidthBox({
    Key? key,
    required this.width,
  }) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Adaptive.h(width),
    );
  }
}
