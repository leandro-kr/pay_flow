import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';

class DividerHorizontalWidget extends StatelessWidget {
  const DividerHorizontalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.maxFinite,
      color: AppColors.stroke,
    );
  }
}
