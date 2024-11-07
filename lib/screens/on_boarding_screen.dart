import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:liquid_swiper_on_boarding/constants/colors.dart';
import 'package:liquid_swiper_on_boarding/providers/get_started_provider.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Access provider instance
    final getStartedProvider = Provider.of<GetStartedProvider>(context);

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          PageView(
            controller: getStartedProvider.pageController,
            onPageChanged: (index) => getStartedProvider.setPage(index),
            children: [
              buildPage(
                imageUrl:
                    "https://images.unsplash.com/photo-1513415564515-763d91423bdd?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                title: "Come along with “Us”",
                description:
                    "Book a ride when you need it, your seat is guaranteed.",
              ),
              // Additional pages for onboarding
              buildPage(
                imageUrl:
                    "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
                title: "Connect Anywhere",
                description: "Get to your destination with ease and comfort.",
              ),
              buildPage(
                imageUrl:
                    "https://images.unsplash.com/photo-1495433324511-bf8e92934d90",
                title: "Discover New Places",
                description:
                    "Explore cities, towns, and hidden gems along the way.",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildPage({
    required String imageUrl,
    required String title,
    required String description,
  }) {
    return Container(
      decoration: BoxDecoration(
        // Use CachedNetworkImage for image URL
        image: DecorationImage(
          image: CachedNetworkImageProvider(imageUrl,
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
          Positioned(
            bottom: 1,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
