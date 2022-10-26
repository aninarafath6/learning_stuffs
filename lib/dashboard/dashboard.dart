import 'package:flutter/material.dart';
import 'package:learning_stuff/constants/app_colors.dart';
import 'package:learning_stuff/dashboard/widgets/header.dart';
import 'package:learning_stuff/dashboard/widgets/sidebar_tile.dart';

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

class IndicationSection extends StatelessWidget {
  const IndicationSection({
    Key? key,
  }) : super(key: key);

  static final List<IndicationCard> indicationItems = [
    const IndicationCard(
      title: "Energy",
      indication: "45%",
      color: Color(0xffA162F7),
    ),
    const IndicationCard(
      title: "Range",
      indication: "157k",
      color: Color(0xffFF7E86),
    ),
    const IndicationCard(
      title: "Break fluid",
      indication: "9%",
      color: Color(0xffA162F7),
    ),
    const IndicationCard(
      title: "Tire Wear",
      indication: "25%",
      color: Color(0xffF6CC0D),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        indicationItems.length,
        (index) {
          var item = indicationItems[index];
          return Expanded(
            child: IndicationCard(
              title: item.title,
              icon: item.icon,
              color: item.color,
            ),
          );
        },
      ),
    );
  }
}

class IndicationCard extends StatelessWidget {
  const IndicationCard({
    this.color,
    this.icon,
    this.indication,
    this.title,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);
  final String? title;
  final String? icon;
  final Color? color;
  final String? indication;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30),
      height: 270,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
