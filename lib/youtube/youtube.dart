import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learning_stuff/constants/app_colors.dart';

class Youtube extends StatelessWidget {
  const Youtube({super.key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.BG_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.PRIMARY_COLOR,
        // elevation: 0,
        toolbarHeight: 56,
        leadingWidth: 200,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(Icons.menu_outlined),
                ),
                const SizedBox(width: 15),
                Image.asset(
                  "assets/logo.png",
                  height: 22,
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.video_call_outlined,
            ),
          ),
          const SizedBox(width: 15),
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
          const SizedBox(width: 15),
          const CircleAvatar(
            backgroundColor: AppColors.BG_COLOR,
            radius: 18,
            backgroundImage: NetworkImage(
                "https://pbs.twimg.com/profile_images/1430369737406484485/xWZZIyDT_400x400.jpg"),
          ),
          const SizedBox(width: 19),
        ],
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screen.width / 2.4,
              height: 40,
              color: AppColors.BG_COLOR,
              child: Center(
                child: TextField(
                  scrollPadding: EdgeInsets.zero,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white.withOpacity(.7)),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff313131)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    suffixIcon: Container(
                      width: 50,
                      color: const Color(0xff313131),
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.white.withOpacity(.7),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 45,
              width: 45,
              // padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.5),
                color: AppColors.BG_COLOR,
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  splashRadius: 1,
                  icon: const Center(
                    child: Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
