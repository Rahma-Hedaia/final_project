import 'package:flutter/material.dart';
import 'package:final_project/bloc/logic.dart';
import 'package:final_project/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class Plant_news extends StatelessWidget {
  static String routeName = 'PlantNews';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>PostCubit()..getData(),
        child:BlocConsumer<PostCubit,PostState>(
            builder: (context,state){
              var obj = PostCubit.getObject(context);
              return Scaffold(
                backgroundColor: Colors.green,
                body: obj.myData.length<=0?CircularProgressIndicator():
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/plants3.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: ListView(
                      children: [
                        for(int i=0;i<obj.myData.length;i++)
                          Card(
                            color: Colors.transparent,
                            child: ListTile(
                              title: Text(obj.myData[i]['title'],style: TextStyle(
                                color: Colors.white
                              )),
                            ),
                          )
                      ]),
                ),
              );
            },
            listener: (context,state){})
    );

  }
}
// Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage("assets/images/plants3.jpg"),
// fit: BoxFit.cover,
// ),
// ),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// BlocProvider(
// create: (context) => PostCubit()..getData(),
// child: BlocConsumer<PostCubit, PostState>(
// builder: (context, state) {
// var obj = PostCubit.getObject(context);
// return Scaffold(
// body: obj.myData.length <= 0
// ? CircularProgressIndicator()
//     : ListView(children: [
// for (int i = 0; i < obj.myData.length; i++)
// Card(
// child: ListTile(
// title: Text(obj.myData[i]['title']),
// ),
// )
// ]),
// );
// },
// listener: (context, state) {}))
// // Text('waiting for being updated',style: TextStyle(
// //   fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black,
// // )),
// ],
// ),
// );