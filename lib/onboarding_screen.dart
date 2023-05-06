import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutorio/page_one.dart';
import 'package:flutorio/page_two.dart';
import 'package:flutorio/applyjob.dart';

class Onboarding_Screen extends StatefulWidget {
  const Onboarding_Screen({super.key});

  @override
  State<Onboarding_Screen> createState() => _Onboarding_ScreenState();
}

class _Onboarding_ScreenState extends State<Onboarding_Screen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView(
        controller: _controller,
        children: [PageOne(), PageTwo()],
      ),
      Container(
          alignment: Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Text("Skip"),
                onTap: () {
                  Navigator.push(context,  MaterialPageRoute(builder: (context) => const ApplyJOb()),);
                },
              ),
              SmoothPageIndicator(controller: _controller, count: 2),
              GestureDetector(
                child: Text("Next"),
                onTap: () {
                  _controller.jumpToPage(2);
                },
              )
            ],
          ))
    ]));
  }
}
