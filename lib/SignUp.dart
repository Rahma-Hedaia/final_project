import 'package:final_project/UserData.dart';
import 'package:final_project/loginOrSignup.dart';
import 'package:final_project/Home.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  static String routeName = 'SignUp';
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();

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
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Sign up",
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
              controller: fullNameController,
              decoration: InputDecoration(
                labelText: "Full name",
                hintText: 'Enter your name',
                hintStyle: TextStyle(color: Colors.white),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.person, color: Colors.green),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter valid email",
                hintStyle: TextStyle(color: Colors.white),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.email, color: Colors.green),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                labelText: "phone number",
                hintText: "Enter your phone number",
                hintStyle: TextStyle(color: Colors.white),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.phone_android, color: Colors.green),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: passwordController1,
              decoration: InputDecoration(
                labelText: "password",
                hintText: "Enter strong password",
                hintStyle: TextStyle(color: Colors.white),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.password_outlined, color: Colors.green),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: passwordController2,
              decoration: InputDecoration(
                labelText: "Confirm password",
                hintText: "Enter your password again",
                hintStyle: TextStyle(color: Colors.white),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.password_outlined, color: Colors.green),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                  return Home();
                }));
                // bool isfound = LogInOrSingnup()
                //     .login(emailController.text, passwordController1.text);
                // if (passwordController1 == passwordController2) {
                //   if(isfound=false){
                //
                    LogInOrSingnup().lisOfUsers.add(UserData(fullNameController.text, emailController.text, phoneNumberController.text, passwordController1.text));
                //   }
                //     }
              },
              child: Text(
                "sign up",
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
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LogInOrSingnup();
                }));
              },
              child: Text(
                "already have account ?",
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
