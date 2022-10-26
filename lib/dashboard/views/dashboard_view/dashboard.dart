import 'package:flutter/material.dart';
import 'package:learning_stuff/constants/app_colors.dart';
import 'package:learning_stuff/dashboard/views/dashboard_view/widgets/header.dart';
import 'package:learning_stuff/dashboard/views/dashboard_view/widgets/indicatino_section.dart';
import 'package:learning_stuff/dashboard/views/dashboard_view/widgets/sidebar_tile.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Expanded(child: SideBar()),
          Expanded(flex: 5, child: DashBoardScreen()),
        ],
      ),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: BorderSide(color: AppColors.BG_COLOR, width: 1.5),
                ),
              ),
              padding: const EdgeInsets.all(21.0),
              child: const Header(),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.all(21.0),
              child: IndicationSection(),
            )
          ],
        ),
      ),
    );
  }
}
