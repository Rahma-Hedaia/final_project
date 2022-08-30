import 'package:final_project/NewPost.dart';
import 'package:final_project/News.dart';
import 'package:final_project/Plant_Calculator.dart';
import 'package:final_project/Profile.dart';
import 'package:final_project/ReapingCrops.dart';
import 'package:final_project/Chat.dart';
import 'package:final_project/TimeLine.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  static String routeName = 'Home';
  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.green,
              title: Text("Indoor Plants",style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )),
              actions: [
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                        return Chats();
                      }));
                    },
                    child: Icon(Icons.chat)),
                SizedBox(width: 15),
                GestureDetector(onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                    return Profile();
                  }));
                },
                    child: Icon(Icons.person_outline))
              ],
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home_outlined), text: "Home"),
                  Tab(icon: Icon(Icons.calculate_outlined), text: "Plant Calculator"),
                  Tab(icon: Icon(Icons.calendar_today_outlined), text: "Reaping crops"),
                  Tab(icon: Icon(Icons.newspaper_rounded), text: "News"),

                ],
              )),
          body: TabBarView(
            children: [ TimeLine(z: Newpost().c),PlantCalculator(), ReapingCrop(),Plant_news()],
          ),
        ));
  }
}
