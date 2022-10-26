import 'package:flutter/material.dart';
import 'package:learning_stuff/constants/app_colors.dart';
import 'package:learning_stuff/dashboard/widgets/sidebar_tile.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SideBar(),
          Expanded(
            flex: 5,
            child: Container(color: AppColors.BG_COLOR),
          )
        ],
      ),
    );
  }
}
