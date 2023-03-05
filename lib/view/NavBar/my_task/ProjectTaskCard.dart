import 'package:flutter/material.dart';

import '../../../widget/common_widget.dart';
class ProjectTaskCard extends StatelessWidget {
  ProjectTaskCard({
    super.key,
    // required this.cardDetails,
  });

  var cardDetails = [
    ['0xff9C67F9','5','Ongoing'],
    ['0xffF79293','7','Under\nReview'],
    ['0xff76BBAA','4','Uncommon'],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardDetails.length,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.only(left: 8),
              width: 130,
              height: 60,
              decoration: BoxDecoration(
                  color: cardClr,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Container(
                    width: 4,
                    height: 32,
                    decoration: BoxDecoration(
                        color: Color(int.parse(cardDetails[index][0])),
                        borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  SizedBox(width: 24,),
                  Text(cardDetails[index][1],style: myStyle(20,textClrLight,FontWeight.w700),),
                  SizedBox(width: 8,),
                  Text(cardDetails[index][2],style: myStyle(12,textClrThin,FontWeight.w400),)
                ],
              )
          );
        },
      ),
    );
  }
}

