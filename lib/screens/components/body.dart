import 'package:flutter/material.dart';
import 'package:sizeconfig/constant.dart';
import 'package:sizeconfig/screens/components/default_button.dart';
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, dynamic>> splashDate = [
    {
      "text": "Welcome to our shop",
      "image": "assets/images/shop1.png",
    },
    {
      "text": "Enjoy our services",
      "image": "assets/images/shop2.png",
    },
    {
      "text": "Fast Delivery",
      "image": "assets/images/shop3.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const Spacer(),
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashDate.length,
              itemBuilder: (context, index) => SplashContent(
                text: splashDate[index]['text'],
                image: splashDate[index]['image'],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        splashDate.length, (index) => buildDot(index: index)),
                  ),
                  const Spacer(flex: 3),
                  DefaultButton(
                    text: "Continue",
                    press: () {},
                  ),
                  const Spacer()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: (kAniamtionDuration),
      margin: const EdgeInsets.only(right: 5),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
