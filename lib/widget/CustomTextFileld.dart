import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'common_widget.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.emailController,
    this.hintText,
    this.labelText,
    this.prefixImg,
    this.prefixIcon
  });

  final TextEditingController emailController;
  final String? hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final String? prefixImg;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      style:myStyle(16,textClrLight,FontWeight.w400),
      decoration: InputDecoration(
        hintText: hintText,
        label: Text("$labelText",style: myStyle(16,Color(0xff8A8A8E),FontWeight.w400),),
        prefixIcon: prefixImg != null? Padding(
          padding: const EdgeInsets.only(left: 18,right: 18),
          child: Image.asset("$prefixImg",color: Color(0xff8A8A8E),width: 18,height: 20,),
        ):Padding(
          padding: const EdgeInsets.only(left: 18,right: 18),
          child: Icon(prefixIcon,color: Color(0xff8A8A8E),),
        ),
        hintStyle: myStyle(16,Color(0xff8A8A8E),FontWeight.w400),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(width: 1,color: Color(0xff8E8E93)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(width: 1,color: Color(0xff8E8E93)),
        ),
      ),
      validator: (value) {
        if(value!.isEmpty){
          return "Field is empty";
        }else{
          return null;
        }
      },
    );
  }
}
