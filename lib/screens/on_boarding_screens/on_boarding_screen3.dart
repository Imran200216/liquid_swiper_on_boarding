import 'package:flutter/material.dart';
import 'package:liquid_swiper_on_boarding/components/custom_title_subtitle_text.dart';
import 'package:liquid_swiper_on_boarding/constants/colors.dart';

class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://images.unsplash.com/photo-1640674307379-a59ed38715f5?q=80&w=1962&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
          Column(
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              const Spacer(),
              const CustomTitleSubtitleText(
                title: "Discover New Places",
                description:
                    "Explore vibrant cities, charming towns, and hidden gems. Experience diverse cultures, taste unique flavors, and make unforgettable memories. Adventure or relaxation, each destination offers a new story, waiting for you to uncover.",
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 5,
                  left: 24,
                  right: 24,
                  bottom: 20,
                ),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: AppColors.secondaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
