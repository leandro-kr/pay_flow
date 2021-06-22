import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_images.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Image.asset(AppImages.google),
    );
  }
}
