import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class IndicationCard extends StatelessWidget {
  const IndicationCard({
    this.color,
    this.icon,
    this.indication,
    this.title,
    this.isSelected = false,
    this.value,
    Key? key,
    this.onTap,
  }) : super(key: key);
  final String? title;
  final String? icon;
  final Color? color;
  final String? indication;
  final double? value;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(right: 30),
        padding: const EdgeInsets.all(20),
        height: 270,
        decoration: BoxDecoration(
          color: isSelected ? color?.withOpacity(.9) : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: color?.withOpacity(isSelected ? 1 : .4),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: SvgPicture.asset(
                  "$icon",
                  color: isSelected ? Colors.white : null,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Text(
              title ?? "",
              style: GoogleFonts.dmSans(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 18),
            SizedBox(
              width: 110,
              height: 110,
              child: SfRadialGauge(
                // enableLoadingAnimation: true,
                axes: <RadialAxis>[
                  RadialAxis(
                    showTicks: false,
                    showFirstLabel: false,
                    showLastLabel: false,
                    showLabels: false,
                    useRangeColorForAxis: true,
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                        angle: 90,
                        axisValue: 5,
                        positionFactor: 0.1,
                        widget: Center(
                          child: Text(
                            indication ?? "",
                            style: GoogleFonts.dmSans(
                              color: isSelected ? Colors.white : Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                    pointers: <GaugePointer>[
                      RangePointer(
                        value: value ?? 0,
                        cornerStyle: CornerStyle.bothCurve,
                        width: 10,
                        sizeUnit: GaugeSizeUnit.logicalPixel,
                        color: isSelected ? Colors.white : color,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
