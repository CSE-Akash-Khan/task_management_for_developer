import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management_app/widget/CustomButton.dart';
import 'package:task_management_app/widget/common_widget.dart';

import 'LoginPage.dart';
import 'SlidePage.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                color: cardClr,
                borderRadius: BorderRadius.circular(8)
              ),
              child: SvgPicture.asset("assets/Group.svg"),
            ),
            SizedBox(height: 32,),
            Text("RANCANG",style: myStyle(36,textClrLight,FontWeight.w700),),
            SizedBox(height: 8,),
            Text("Your Personal Task Manager",style: myStyle(17,textClrThin,FontWeight.w400),),
            SizedBox(height: 264,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(btnText: "Getting Started",icon: Icons.arrow_forward_ios,onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => SlidePageAuto(),));
              },),
            ),
            SizedBox(height: 40,),
            SvgPicture.asset('assets/Indicator.svg')
          ],
        ),
      ),
    );
  }
}
