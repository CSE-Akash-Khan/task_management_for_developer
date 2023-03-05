import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management_app/widget/CustomButton.dart';
import 'package:task_management_app/widget/common_widget.dart';

import '../widget/CustomTextFileld.dart';
import 'SlidePage.dart';
class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? labelText = "Email";
  IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // leading: Icon(Icons.cancel_outlined),
        leading: Image.asset("assets/cancel.png",width: 13,height: 13,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16,top: 16),
            child: Text("Sing Up",style: myStyle(16,textClrLight,FontWeight.w700),),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16,),
            Text("Your Email Address",style: formTextStyle(),),
            SizedBox(height: 16,),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(emailController: emailController, labelText: "Enter your email address",prefixImg: "assets/email.png",),
                  SizedBox(height: 20,),
                  Text("your Password",style: formTextStyle(),),
                  SizedBox(height: 16,),
                  CustomTextField(emailController: passwordController, labelText: "Enter your assword",prefixImg: "assets/key.png",),
                ],
              ),
            ),
            SizedBox(height: 16,),
            CustomButton(btnText: "Login",onTap: () {},),
            SizedBox(height: 24,),
            Center(child: Text("Forgot Your Password",style: myStyle(16,textClrLight,FontWeight.w400),))
          ],
        ),
      ),
    );
  }
}

