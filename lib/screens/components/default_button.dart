import 'package:flutter/material.dart';
import 'package:sizeconfig/constant.dart';
import 'package:sizeconfig/size_config.dart';

class DefaultButton extends StatelessWidget {
  final String? text;
  final dynamic press;
  const DefaultButton({Key? key, this.text, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportianateScreenHeight(56),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text!,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18), color: Colors.white),
        ),
      ),
    );
  }
}