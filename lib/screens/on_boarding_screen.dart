import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:liquid_swiper_on_boarding/constants/colors.dart';
import 'package:liquid_swiper_on_boarding/screens/on_boarding_screens/on_boarding_screen1.dart';
import 'package:liquid_swiper_on_boarding/screens/on_boarding_screens/on_boarding_screen2.dart';
import 'package:liquid_swiper_on_boarding/screens/on_boarding_screens/on_boarding_screen3.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int page = 0;
  final LiquidController liquidController = LiquidController();

  @override
  Widget build(BuildContext context) {


    final pages = [
      const OnBoardingScreen1(),
      const OnBoardingScreen2(),
      const OnBoardingScreen3(),
    ];

    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: LiquidSwipe(
        pages: pages,
        enableLoop: false,
        enableSideReveal: true,
        fullTransitionValue: 300,
        slideIconWidget: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.primaryColor,
          size: 30,
        ),
        waveType: WaveType.liquidReveal,
        onPageChangeCallback: (index) {
          setState(() {
            page = index;
          });
        },
        liquidController: liquidController,
      ),
    );
  }
}
