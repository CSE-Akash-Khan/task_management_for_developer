import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widget/common_widget.dart';
class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12,top: 8,bottom: 8),
          child: CircleAvatar(
            minRadius: 16,
            backgroundColor: circleAbtrBgColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: SvgPicture.asset("assets/search.svg",color: Colors.white,),
          )
        ],
        title: Row(
          children: [
            SizedBox(width: 8,),
            Text("Akash Khan"),
            SizedBox(width: 10,),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);
}
