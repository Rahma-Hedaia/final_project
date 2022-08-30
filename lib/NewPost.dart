import 'package:final_project/TimeLine.dart';
import 'package:flutter/material.dart';

class Newpost extends StatelessWidget {
  static String routeName = 'NewPost';

  TextEditingController c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/plants3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.tUQUao6VkI8Jf-hjQ_kUCwHaHa%26pid%3DApi&f=1')),
                  SizedBox(width: 25),
                  Text(
                    "me",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: TextFormField(
                  maxLength: 500,
                  onChanged: (v) {
                    print(' ${v}');
                  },
                  controller: c,
                  decoration: InputDecoration(
                      labelText: 'new post',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) {
                            return TimeLine(
                              z: c,
                            );
                          },
                        ));
                      },
                      child: Text("go to timeline"),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          fixedSize: const Size(200, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return TimeLine(
                              z: c,
                            );
                          },
                        ));
                      },
                      child: Text("post"),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          fixedSize: const Size(200, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
