import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LabelWidget extends StatelessWidget {
  const LabelWidget({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        label,
        style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: Adaptive.px(20)),
      ),
    );
  }
}
