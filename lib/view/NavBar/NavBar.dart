import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management_app/widget/common_widget.dart';
import 'CalendarPage.dart';
import 'my_task/MyTaskPage.dart';
import 'ProfilePage.dart';
import 'ProjectPage.dart';
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  PageController? pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: btnClr,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Container(
        child: PageView(
          controller: pageController,
          children: [
            MyTaskPage(),
            CalendarPage(),
            ProjectPage(),
            ProfilePage()
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 100,
        color: cardClr,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarButton(
                img: "assets/Group.svg",
                title: "My Task",
                onTap: () {
                  pageController!.jumpToPage(0);
                  },
              ),
              NavBarButton(
                img: "assets/calendar.svg",
                title: "Calendar",
                onTap: () {
                  pageController!.jumpToPage(1);
                },
              ),
              NavBarButton(
                img: "assets/Document.svg",
                title: "Project",
                onTap: () {
                  pageController!.jumpToPage(2);
                },
              ),
              NavBarButton(
                img: "assets/user_profile.svg",
                title: "Profile",
                onTap: () {
                  pageController!.jumpToPage(3);
                },
              ),
            ],
          ),
        )
      ),
    );
  }

  InkWell NavBarButton({String? img,String? title,VoidCallback? onTap}) {
    return InkWell(
              onTap: onTap,
              child: Column(
                children: [
                  SvgPicture.asset("$img",color: unselectedItemClr,width: 24,height: 24,),
                  const SizedBox(height: 10,),
                  Text("$title",style: myStyle(10,unselectedItemClr,FontWeight.w400),)
                ],
              ),
            );
  }
}
