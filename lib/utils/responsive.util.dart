import 'package:flutter/material.dart';
import 'package:learning_stuff/constants/app_sizes.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key, required this.mobile, this.desktop, this.tab});
  final Widget mobile;
  final Widget? tab;
  final Widget? desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints constraints) {
      if (constraints.maxWidth < AppSizes.mobile) {
        return mobile;
      } else if (constraints.maxWidth < AppSizes.tablet &&
          constraints.maxHeight > AppSizes.mobile) {
        return tab ?? desktop ?? mobile;
      } else {
        return desktop ?? mobile;
      }
    });
  }
}
