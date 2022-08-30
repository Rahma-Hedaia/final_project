import 'package:final_project/Profile.dart';
import 'package:final_project/SignUp.dart';
import 'package:final_project/UserData.dart';
import 'package:final_project/Home.dart';
import 'package:flutter/material.dart';

class LogInOrSingnup extends StatelessWidget {
  static String routeName = 'LoginOrSignup';
  String emailforprofile='';
  String passwordforprofile='';

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String hintText='';
  List<UserData> lisOfUsers = [
    UserData("Rahma", "rahmaahmed@gmail.com", "012", "1234"),
    UserData("Randa", "randaahmed@gmail.com", "010", "876"),
    UserData("Kholood", "kholoodahmed@gmail.com", "011", "876543"),
    UserData("Rokaia", "rokaiaahmed@gmail.com", "015", "8765"),
  ];
  bool login(String email, String password) {
    for (int i = 0; i < lisOfUsers.length; i++) {
      if ((lisOfUsers[i].email == email) &&
          (lisOfUsers[i].password == password)) {
        return true;
      } else {
        return false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset :false,
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.all(35),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/plants3.jpg"),
            fit: BoxFit.fill ,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "User name",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.email, color: Colors.green),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.password_outlined, color: Colors.green),
                suffixIcon: Icon(Icons.remove_red_eye, color: Colors.green),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "forget password?",
              style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  color: Colors.green),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                bool iscoorect =
                    login(emailController.text, passwordController.text);
                if (iscoorect) {
                  Navigator.pushNamed(context, Home.routeName,arguments: ProfileArgs(Email: emailController.text.toString(),Password: passwordController.text.toString()));
                }
              },
              child: Text(
                "LogIn",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Or sign up using",
              style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  color: Colors.green),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/facebook.png'),
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/twitter.png'),
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/google.png'),
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Signup();
                }));
              },
              child: Text(
                "Or sign up using email",
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
