import 'package:flutter/material.dart';
import 'package:learning_stuff/utils/responsive.util.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Responsive(
          desktop: Text("desktop"),
          mobile: Text("mobile"),
          tab: Text("tab"),
        ),
      ),
      // body: Responsive(),
    );
  }
}
