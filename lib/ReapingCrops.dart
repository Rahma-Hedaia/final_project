import 'package:final_project/PlantDetails.dart';
import 'package:flutter/material.dart';
class ReapingCrop extends StatefulWidget {
  static String routeName = 'ReapingCrops';
  @override
  State<ReapingCrop> createState() => _ReapingCropState();
}
class _ReapingCropState extends State<ReapingCrop> {

  List<Map> mylist=[
    {
      'image':'assets/images/nn.jpeg',
      'title':'نعناع',
    },
    {
      'image':'assets/images/tt.jpeg',
      'title':'طماطم',
    },
    {
      'image':'assets/images/cucumber.jpg',
      'title':'خيار',

    },
    {
      'image':'assets/images/rayhan.jpg',
      'title':'ريحان',

    },
    {
      'image':'assets/images/nn.jpeg',
      'title':'نعناع',
    },
    {
      'image':'assets/images/tt.jpeg',
      'title':'طماطم',
    },
    {
      'image':'assets/images/cucumber.jpg',
      'title':'خيار',

    },
    {
      'image':'assets/images/rayhan.jpg',
      'title':'ريحان',

    },
  ];

  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/plants3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child : SingleChildScrollView(
          child: Column (
            children: [
              for(int i=0;i<mylist.length;i++)
                Card(
                  child:
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (c){
                            return PlantDetails(index: i,);
                          })
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(mylist[i]['image']),
                          ),

                          SizedBox( width: 25,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(mylist[i]['title'],
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
            ],
          ),
        )

    );

  }
}