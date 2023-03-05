import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widget/common_widget.dart';
import 'CustomAppBar.dart';
import 'MyTaskPart.dart';
import 'ProjectTaskCard.dart';
class MyTaskPage extends StatelessWidget {
  MyTaskPage({Key? key}) : super(key: key);



  double sliderValue = 80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Project Task",style: myStyle(16,textClrLight,FontWeight.w700),),
              SizedBox(height: 16,),
              ProjectTaskCard(),
              SizedBox(height: 32,),
              Text("My Task",style: myStyle(16,textClrLight,FontWeight.w700),),
              SizedBox(height: 16,),
              MyTaskPart()
            ],
          ),
        ),
      ),
    );
  }
}

