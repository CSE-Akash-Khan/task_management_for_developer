import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Practice extends StatelessWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child: Center(
         child: SvgPicture.asset("assets/email.svg",width: 16,height: 16,),
       ),
      ),
    );
  }
}
