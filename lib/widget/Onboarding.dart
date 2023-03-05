import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management_app/view/LoginPage.dart';
import 'package:task_management_app/widget/CustomButton.dart';
import 'package:task_management_app/widget/common_widget.dart';
class Onboarding extends StatelessWidget {
  Onboarding({Key? key,required this.title,required this.img}) : super(key: key);

  String title;
  String img;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -180,
            child: Transform.rotate(
              angle: pi/5,
              child: Container(
                height: 400,
                width: 480,
                decoration: BoxDecoration(
                  color: Color(0xff8E8E93),
                  borderRadius: BorderRadius.circular(40)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$title",style: myStyle(36,textClrLight,FontWeight.w700),),
                SizedBox(height: 32,),
                SvgPicture.asset("$img"),
                SizedBox(height: 36,),
                CustomButton(btnText: "Sign Up",onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                },),
                SizedBox(height: 16,),
                CustomButton(btnText: "Login",isOutLinel: true,onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                },),
                SizedBox(height: 40,),
                Center(child: SvgPicture.asset("assets/indicator.svg"))
              ],
            ),
          )
        ],
      ),
    );
  }
}

