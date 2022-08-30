// in this class i replaced tab bar with curved bottom navigetionbar
import 'package:final_project/Chat.dart';
import 'package:final_project/NewPost.dart';
import 'package:final_project/News.dart';
import 'package:final_project/Plant_Calculator.dart';
import 'package:final_project/Profile.dart';
import 'package:final_project/ReapingCrops.dart';
import 'package:final_project/TimeLine.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeTest extends StatefulWidget {
  static String routeName='HomeTest';
  @override
  _HomeTestState createState() => _HomeTestState();
}

class _HomeTestState extends State<HomeTest> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final screens = [
    TimeLine(z: Newpost().c),
    Plant_news(),
    ReapingCrop(),
    PlantCalculator(),
    Chats(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Scaffold(
        backgroundColor: Colors.transparent,
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            backgroundColor: Colors.green,
            index: 0,
            height: 60.0,
            items: <Widget>[
              Icon(Icons.home_outlined, size: 30),
              SvgPicture.asset(
                "assets/images/news-svgrepo-com.svg",
                height: 30,
                width: 30,
                color: Colors.black,
              ),
              SvgPicture.asset(
                "assets/images/grow-svgrepo-com.svg",
                height: 30,
                width: 30,
                color: Colors.black,
              ),
              Icon(Icons.calculate_outlined, size: 30),
              Icon(Icons.chat_outlined, size: 30),
              Icon(Icons.perm_identity, size: 30),
            ],
            color: Colors.white,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
            letIndexChange: (index) => true,
          ),
          body: screens[_page]),
    );
  }
}
