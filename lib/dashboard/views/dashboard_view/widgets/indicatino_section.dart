import 'package:flutter/material.dart';
import 'package:learning_stuff/dashboard/views/dashboard_view/widgets/indication_card.dart';

class IndicationSection extends StatefulWidget {
  const IndicationSection({
    Key? key,
  }) : super(key: key);

  static final List<IndicationCard> indicationItems = [
    const IndicationCard(
      title: "Energy",
      indication: "45%",
      color: Color(0xffA162F7),
      icon: "assets/icons/lightning.svg",
      value: 45,
    ),
    const IndicationCard(
      title: "Range",
      indication: "157k",
      color: Color(0xffFF7E86),
      icon: "assets/icons/arrow.svg",
      value: 80,
    ),
    const IndicationCard(
      title: "Break fluid",
      indication: "9%",
      color: Color(0xffA162F7),
      icon: "assets/icons/blood.svg",
      value: 9,
    ),
    const IndicationCard(
      title: "Tire Wear",
      indication: "25%",
      color: Color(0xffF6CC0D),
      icon: "assets/icons/tier.svg",
      value: 25,
    ),
  ];

  @override
  State<IndicationSection> createState() => _IndicationSectionState();
}

class _IndicationSectionState extends State<IndicationSection> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        IndicationSection.indicationItems.length,
        (index) {
          var item = IndicationSection.indicationItems[index];
          return Expanded(
            child: IndicationCard(
              title: item.title,
              icon: item.icon,
              color: item.color,
              indication: item.indication,
              value: item.value,
              isSelected: selectedIndex == index,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
