import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class IconSvg extends StatelessWidget {
  const IconSvg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 280, top: 50),
      child: InkWell(
        child: SvgPicture.asset(
          'assets/icons/Icon.svg',
          height: 60,
        ),
      ),
    );
  }
}
