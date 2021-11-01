
import 'package:flutter/material.dart';
import 'package:sizeconfig/constant.dart';
import 'package:sizeconfig/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
     this.text,
     this.image,
  }) : super(key: key);

  final String? text;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text!,
          textAlign:TextAlign.center,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
         const Text("Welcome to Tokoto,Let's shop!"),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProportianateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
