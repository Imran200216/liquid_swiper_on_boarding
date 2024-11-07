import 'package:flutter/material.dart';
import 'package:liquid_swiper_on_boarding/components/custom_title_subtitle_text.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://images.unsplash.com/photo-1715794202088-84a7792062b0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/png/linear-box.png",
              height: 400,
              fit: BoxFit.fitWidth,
            ),
          ),
          const CustomTitleSubtitleText(
            title: "Come Along with Us",
            description:
                "Experience seamless travel at your convenience. Book instantly, skip the wait, and enjoy a guaranteed seat. Discover new destinations with comfort and ease your next journey is just a tap away.",
          ),
        ],
      ),
    );
  }
}
