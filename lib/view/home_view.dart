import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tapshyrma/components/container_widget.dart';
import 'package:tapshyrma/components/icon_svg.dart';
import 'package:tapshyrma/components/smooth_page.dart';
import 'package:tapshyrma/constants/app_colors.dart';
import 'package:tapshyrma/constants/app_text.dart';
import 'package:tapshyrma/constants/app_text_style.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});
  PageController _pageController = PageController();
  List<String> imageUrl = [
    'assets/images/image1.png',
    'assets/images/wednesday.jpg',
  ];
  List<String> imageText = [
    'assets/images/image3.png',
    'assets/images/image.png'
  ];
  List<String> textUrl = [
    AppText.title1,
    AppText.title2,
  ];

  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                height: 460,
                child: PageView.builder(
                  itemCount: imageUrl.length,
                  itemBuilder: (_, index) => Container(
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imageUrl[index]),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: [
                        const IconSvg(),
                        const SizedBox(
                          height: 170,
                        ),
                        Image.asset(
                          imageText[index],
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            textUrl[index],
                            style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: AppColors.textColor,
                                fontFamily: 'Nunito'),
                          ),
                        ),
                        SmoothPage(
                            pageController: _pageController,
                            imageUrl: imageUrl),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 520, right: 145),
                child: Text(AppText.text, style: AppTextStyle.text),
              ),
              SizedBox(
                height: 22,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ContainerWidget(image: 'assets/images/IMG.png'),
                    SizedBox(
                      width: 10,
                    ),
                    ContainerWidget(image: 'assets/images/images.jpeg'),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 740,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.backgroundColor,
              selectedItemColor: AppColors.navigColor,
              unselectedItemColor: AppColors.navigColor,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/BoxIcons.svg'),
                  label: AppText.bottomText,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/BoxIcons1.svg'),
                  label: AppText.bottomText1,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/BoxIcons2.svg'),
                  label: AppText.bottomText2,
                ),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/BoxIcons3.svg'),
                    label: AppText.bottomText3),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/BoxIcons4.svg'),
                  label: AppText.bottomText4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
