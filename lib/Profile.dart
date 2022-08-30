import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static String routeName = 'Profie';

  @override
  Widget build(BuildContext context) {
    ProfileArgs args = ModalRoute.of(context).settings.arguments as ProfileArgs;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/plants3.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.only(top: 40,right: 15, left: 15,bottom: 30),
        child: Column(
          children: [

            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(Icons.phone,color: Colors.green),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'change phone number',
                    style: TextStyle(
                      fontSize: 17.88,
                      fontWeight: FontWeight.w600,
                      color: Colors.green
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward,color: Colors.green),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(Icons.camera_enhance_sharp,color: Colors.green),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'add a Picture',
                    style: TextStyle(
                        fontSize: 17.88,
                        fontWeight: FontWeight.w600,
                        color: Colors.green
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward,color: Colors.green),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(Icons.password,color: Colors.green),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Change your password',
                    style: TextStyle(
                        fontSize: 17.88,
                        fontWeight: FontWeight.w600,
                        color: Colors.green
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward,color: Colors.green),
                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}

class ProfileArgs {
  String Email;
  String Password;

  ProfileArgs({this.Email, this.Password});
}
