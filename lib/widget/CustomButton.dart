import 'package:flutter/material.dart';
import 'package:task_management_app/view/LoginPage.dart';

import 'common_widget.dart';
class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,required this.btnText, this.onTap,this.isOutLinel,this.icon
  });
  String btnText;
  VoidCallback? onTap;
  bool? isOutLinel;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 56,
      color: isOutLinel == true ? bgClr:btnClr,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
          side: BorderSide(color: isOutLinel == true?textClrLight:btnClr)
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$btnText",style: myStyle(17,Colors.white,FontWeight.w600),),
          if(icon != null) Spacer(),
          if (icon != null) Icon(icon)
        ],
      ),
      onPressed: onTap,
    );
  }
}
