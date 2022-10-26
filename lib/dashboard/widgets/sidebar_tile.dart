import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_stuff/constants/app_colors.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  List<SidebarTile> drawerItems = [
    const SidebarTile(
      title: "Dashboard",
      iconURL: "assets/icons/dashboard icon.svg",
    ),
    const SidebarTile(
      title: "Assets",
      iconURL: "assets/icons/dougnut.svg",
    ),
    const SidebarTile(
      title: "Booking",
      iconURL: "assets/icons/car.svg",
    ),
    const SidebarTile(
      title: "Sell Cars",
      iconURL: "assets/icons/shoppint_bag.svg",
    ),
    const SidebarTile(
      title: "Buy Cars",
      iconURL: "assets/icons/cart.svg",
    ),
    const SidebarTile(
      title: "Services ",
      iconURL: "assets/icons/fenching.svg",
    ),
    const SidebarTile(
      title: "Calendar",
      iconURL: "assets/icons/calendar.svg",
    ),
    const SidebarTile(
      title: "Messages",
      iconURL: "assets/icons/comment.svg",
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Drawer(
          elevation: 0,
          child: SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSideHeader(),
                  const SizedBox(height: 35),
                  ...List.generate(drawerItems.length, (index) {
                    SidebarTile item = drawerItems[index];
                    return SidebarTile(
                      iconURL: item.iconURL,
                      title: item.title,
                      isSelected: index == selectedIndex,
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    );
                  }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SidebarTile(
                        title: "Settings",
                        iconURL: "assets/icons/cog.svg",
                        isSelected: 8 == selectedIndex,
                        onTap: () {
                          setState(() {
                            selectedIndex = 8;
                          });
                        },
                      ),
                      SidebarTile(
                        title: "Logout",
                        iconURL: "assets/icons/sign_out.svg",
                        isSelected: 9 == selectedIndex,
                        onTap: () {
                          setState(() {
                            selectedIndex = 9;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SvgPicture _buildSideHeader() {
    return SvgPicture.asset(
      "assets/icons/logo.svg",
      width: 108,
      height: 31,
    );
  }
}

class SidebarTile extends StatelessWidget {
  const SidebarTile({
    Key? key,
    required this.iconURL,
    this.isSelected = false,
    required this.title,
    this.onTap,
  }) : super(key: key);
  final String title;
  final String iconURL;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: isSelected ? AppColors.INDICATOR_COLOR : Colors.transparent,
      ),
      child: ListTile(
        onTap: onTap,
        leading: SvgPicture.asset(iconURL),
        minVerticalPadding: 15,
        minLeadingWidth: 10,
        title: Text(
          title,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: AppColors.FONT_COLOR,
          ),
        ),
      ),
    );
  }
}
