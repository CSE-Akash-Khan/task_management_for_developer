import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widget/common_widget.dart';
class MyTaskPart extends StatelessWidget {
  MyTaskPart({
    super.key,
  });

  double sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 8),
          height: 110,
          width: 345,
          decoration: BoxDecoration(
            color: cardClr,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/checkBox.svg'),
                        SizedBox(width: 11,),
                        Text("Research Analysis",style: myStyle(16,textClrThin,FontWeight.w400),),
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: 70,
                      height: 24,
                      decoration: BoxDecoration(
                          color: Color(0xffFEEBF5),
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(child: Text("Urgent",style: myStyle(12,Color(0xffF79293),FontWeight.w400),)),
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    SizedBox(width: 40,),
                    Container(
                      // margin: EdgeInsets.fromLTRB(48, 16, 57, 13),
                      // margin: EdgeInsets.only(left: 48),
                      width: 230,
                      height: 8,
                      decoration: BoxDecoration(
                          color: Color(0xff363748),
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 8,
                            width: sliderValue,
                            decoration: BoxDecoration(
                                color: Color(0xff9C67F9),
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(16)
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16,),
                    Text("5/20",style: myStyle(12,textClrThin,FontWeight.w400))
                  ],
                ),
                SizedBox(height: 4,),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text("2 Days left",style: myStyle(12,textClrThin,FontWeight.w400),),
                )
              ],
            ),
          ),
        );
      },);
  }
}

