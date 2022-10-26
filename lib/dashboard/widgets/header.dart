
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_stuff/constants/app_colors.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorWidth: 3,
            decoration: InputDecoration(
              fillColor: AppColors.FEILDCOLOR,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              hintText: "Search or type",
              hintStyle: GoogleFonts.dmSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.FONT_COLOR,
              ),
              prefixIcon: Container(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset("assets/icons/Vector.svg"),
              ),
            ),
          ),
        ),
        const Spacer(flex: 2),
        Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: () {},
            child: Stack(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(6),
                  child: SvgPicture.asset("assets/icons/Vector-1.svg"),
                ),
                Positioned(
                  top: 8,
                  right: 10,
                  child: Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                        color: AppColors.RED_COLOR,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white, width: 1)),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        const CircleAvatar(
          radius: 22,
          backgroundImage: AssetImage("assets/avatars/avatar.png"),
        )
      ],
    );
  }
}
