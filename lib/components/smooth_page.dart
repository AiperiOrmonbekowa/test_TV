import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tapshyrma/constants/app_colors.dart';

class SmoothPage extends StatelessWidget {
  const SmoothPage({
    super.key,
    required PageController pageController,
    required this.imageUrl,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<String> imageUrl;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _pageController,
      count: imageUrl.length,
      effect: const SlideEffect(
          paintStyle: PaintingStyle.stroke,
          dotColor: AppColors.navigColor,
          strokeWidth: 0.6,
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: Colors.indigo),
    );
  }
}
