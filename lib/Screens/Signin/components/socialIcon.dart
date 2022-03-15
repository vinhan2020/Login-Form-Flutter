import 'package:flutter/material.dart';
import 'package:flutter_application/constains.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String srcImg;
  final VoidCallback press;
  const SocialIcon({
    Key? key,
    required this.srcImg,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryLightColor),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          srcImg,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
