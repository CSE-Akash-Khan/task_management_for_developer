import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_management_app/widget/Onboarding.dart';
class SlidePageAuto extends StatefulWidget {
  const SlidePageAuto({Key? key}) : super(key: key);

  @override
  State<SlidePageAuto> createState() => _SlidePageAutoState();
}

class _SlidePageAutoState extends State<SlidePageAuto> {
  // PageController? controller;
  final PageController pageController = PageController();
  Timer? timer;
  int currentPage = 0;
  @override
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (currentPage < 3) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      pageController.animateToPage(
        currentPage,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }
  @override
  void dispose() {
    timer?.cancel();
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Onboarding(title: "Update Progress Your Work for The Team", img: "assets/slider1.svg"),
          Onboarding(title: "Create a Task and Assign it to Your Team Members", img: "assets/slider2.svg"),
          Onboarding(title: "Get Notified when you Get a New Assignment", img: "assets/slider3.svg"),
        ],
      ),
    );
  }
}
