import 'package:flutter/material.dart';
import 'package:liquid_swiper_on_boarding/components/custom_title_subtitle_text.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://images.unsplash.com/photo-1513354756164-470bb507220a?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
            title: "Connect Anywhere",
            description:
                "Travel effortlessly, reaching any destination in style and comfort. Whether near or far, your journey is simple, smooth, and tailored for convenience. Experience the world around you like never before—connected and carefree.",
          ),
        ],
      ),
    );
  }
}
