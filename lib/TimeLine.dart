import 'package:final_project/NewPost.dart';
import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  static String routeName = 'TimeLine';

  TextEditingController z = TextEditingController();
  TimeLine({this.z});
  List<Map> mylist = [
    {
      'img':
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.y7XPzjE6dkuP3STU-9KV7QHaHa%26pid%3DApi%26h%3D160&f=1',
      'title': ' ahmed',
      'subtitle': 'ممكن حد يقولي بتعملوا ايه علشان النعناع يكبر ويكمل للاخر'
    },
    {
      'img':
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.y7XPzjE6dkuP3STU-9KV7QHaHa%26pid%3DApi%26h%3D160&f=1',
      'title': 'muhammed ',
      'subtitle': 'هو ايه اسم الصبارة اللي بتطلع تين؟'
    },
    {
      'img':
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.y7XPzjE6dkuP3STU-9KV7QHaHa%26pid%3DApi%26h%3D160&f=1',
      'title': 'ahmed muhammed',
      'subtitle': 'ينفع ازرع شجر فوق السطح ولا اعشاب وورد بس؟'
    },
    {
      'img':
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.y7XPzjE6dkuP3STU-9KV7QHaHa%26pid%3DApi%26h%3D160&f=1',
      'title': 'ali ahmed',
      'subtitle': 'this is fine'
    },
    {
      'img':
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.y7XPzjE6dkuP3STU-9KV7QHaHa%26pid%3DApi%26h%3D160&f=1',
      'title': 'muhammed ali',
      'subtitle': 'this is fine'
    },
    {
      'img':
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.y7XPzjE6dkuP3STU-9KV7QHaHa%26pid%3DApi%26h%3D160&f=1',
      'title': 'ahmed muhammed',
      'subtitle': 'this is fine'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Newpost();
                  },
                ));
              },
              child: Text("Ask People"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            Divider(
              color: Colors.white,
              endIndent: 25,
              indent: 25,
              thickness: 2,
            ),
            Card(
              color: Colors.white70,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.tUQUao6VkI8Jf-hjQ_kUCwHaHa%26pid%3DApi&f=1')),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "me",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text("${z.text}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      )),
                ],
              ),
            ),
            Card(
              color: Colors.white70,
              child: Column(
                children: [
                  for (int i = 0; i < mylist.length; i++)
                    Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    NetworkImage(mylist[i]['img'])),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              mylist[i]['title'],
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          mylist[i]['subtitle'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.green,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text("15"),
                            SizedBox(
                              width: 10,
                            ),
                            MaterialButton(
                              color: Colors.green,
                              onPressed: () {},
                              child: Text("comment"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("3"),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          endIndent: 25,
                          indent: 25,
                          thickness: 2,
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
