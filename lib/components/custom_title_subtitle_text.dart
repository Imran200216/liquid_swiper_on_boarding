import 'package:flutter/material.dart';
import 'package:liquid_swiper_on_boarding/constants/colors.dart';

class CustomTitleSubtitleText extends StatelessWidget {
  final String title;
  final String description;
  final bool showButton; // Control button visibility
  final String? buttonText; // Text for the button (nullable)
  final VoidCallback? onTap; // onTap callback for the button (nullable)

  const CustomTitleSubtitleText({
    super.key,
    required this.title,
    required this.description,
    this.showButton = false, // Default value is false
    this.buttonText, // Optional button text
    this.onTap, // Optional onTap callback
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 1,
      left: 0,
      right: 0,
      child: Container(
        margin: const EdgeInsets.only(left: 24, right: 24, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textAlign: TextAlign.start,
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
            const SizedBox(
              height: 15,
            ),
            Visibility(
              visible: showButton,
              child: InkWell(
                onTap: onTap,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      buttonText ?? "Get Started",
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        color: AppColors.secondaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
